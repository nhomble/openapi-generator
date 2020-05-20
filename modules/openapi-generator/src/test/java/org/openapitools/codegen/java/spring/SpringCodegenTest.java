/*
 * Copyright 2018 OpenAPI-Generator Contributors (https://openapi-generator.tech)
 * Copyright 2018 SmartBear Software
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.openapitools.codegen.java.spring;

import io.swagger.parser.OpenAPIParser;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.Operation;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.media.Schema;
import io.swagger.v3.oas.models.servers.Server;
import io.swagger.v3.parser.core.models.ParseOptions;
import org.openapitools.codegen.*;
import org.openapitools.codegen.languages.SpringCodegen;
import org.openapitools.codegen.languages.features.CXFServerFeatures;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Map;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.groupingBy;
import static org.openapitools.codegen.languages.SpringCodegen.RESPONSE_WRAPPER;
import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertNotNull;

public class SpringCodegenTest {

    @Test
    public void testInitialConfigValues() throws Exception {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.processOpts();

        OpenAPI openAPI = new OpenAPI();
        openAPI.addServersItem(new Server().url("https://api.abcde.xy:8082/v2"));
        openAPI.setInfo(new Info());
        codegen.preprocessOpenAPI(openAPI);

        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.HIDE_GENERATION_TIMESTAMP), Boolean.FALSE);
        Assert.assertEquals(codegen.isHideGenerationTimestamp(), false);
        Assert.assertEquals(codegen.modelPackage(), "org.openapitools.model");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.MODEL_PACKAGE), "org.openapitools.model");
        Assert.assertEquals(codegen.apiPackage(), "org.openapitools.api");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.API_PACKAGE), "org.openapitools.api");
        Assert.assertEquals(codegen.getInvokerPackage(), "org.openapitools.api");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.INVOKER_PACKAGE), "org.openapitools.api");
        Assert.assertEquals(codegen.getBasePackage(), "org.openapitools");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.BASE_PACKAGE), "org.openapitools");
        Assert.assertEquals(codegen.getConfigPackage(), "org.openapitools.configuration");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.CONFIG_PACKAGE), "org.openapitools.configuration");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.SERVER_PORT), "8082");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.UNHANDLED_EXCEPTION_HANDLING), false);
    }

    @Test
    public void testSettersForConfigValues() throws Exception {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.setHideGenerationTimestamp(true);
        codegen.setModelPackage("xx.yyyyyyyy.model");
        codegen.setApiPackage("xx.yyyyyyyy.api");
        codegen.setInvokerPackage("xx.yyyyyyyy.invoker");
        codegen.setBasePackage("xx.yyyyyyyy.base");
        codegen.setConfigPackage("xx.yyyyyyyy.config");
        codegen.setUnhandledException(true);
        codegen.processOpts();

        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.HIDE_GENERATION_TIMESTAMP), Boolean.TRUE);
        Assert.assertEquals(codegen.isHideGenerationTimestamp(), true);
        Assert.assertEquals(codegen.modelPackage(), "xx.yyyyyyyy.model");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.MODEL_PACKAGE), "xx.yyyyyyyy.model");
        Assert.assertEquals(codegen.apiPackage(), "xx.yyyyyyyy.api");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.API_PACKAGE), "xx.yyyyyyyy.api");
        Assert.assertEquals(codegen.getInvokerPackage(), "xx.yyyyyyyy.invoker");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.INVOKER_PACKAGE), "xx.yyyyyyyy.invoker");
        Assert.assertEquals(codegen.getBasePackage(), "xx.yyyyyyyy.base");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.BASE_PACKAGE), "xx.yyyyyyyy.base");
        Assert.assertEquals(codegen.getConfigPackage(), "xx.yyyyyyyy.config");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.CONFIG_PACKAGE), "xx.yyyyyyyy.config");
        Assert.assertEquals(codegen.isUnhandledException(), true);
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.UNHANDLED_EXCEPTION_HANDLING), true);
    }

    @Test
    public void testAdditionalPropertiesPutForConfigValues() throws Exception {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.additionalProperties().put(CodegenConstants.HIDE_GENERATION_TIMESTAMP, "true");
        codegen.additionalProperties().put(CodegenConstants.MODEL_PACKAGE, "xyz.yyyyy.mmmmm.model");
        codegen.additionalProperties().put(CodegenConstants.API_PACKAGE, "xyz.yyyyy.aaaaa.api");
        codegen.additionalProperties().put(CodegenConstants.INVOKER_PACKAGE, "xyz.yyyyy.iiii.invoker");
        codegen.additionalProperties().put(SpringCodegen.BASE_PACKAGE, "xyz.yyyyy.bbbb.base");
        codegen.additionalProperties().put(SpringCodegen.CONFIG_PACKAGE, "xyz.yyyyy.cccc.config");
        codegen.additionalProperties().put(SpringCodegen.SERVER_PORT, "8088");
        codegen.processOpts();

        OpenAPI openAPI = new OpenAPI();
        openAPI.addServersItem(new Server().url("https://api.abcde.xy:8082/v2"));
        openAPI.setInfo(new Info());
        openAPI.getInfo().setTitle("Some test API");
        codegen.preprocessOpenAPI(openAPI);

        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.HIDE_GENERATION_TIMESTAMP), Boolean.TRUE);
        Assert.assertEquals(codegen.isHideGenerationTimestamp(), true);
        Assert.assertEquals(codegen.modelPackage(), "xyz.yyyyy.mmmmm.model");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.MODEL_PACKAGE), "xyz.yyyyy.mmmmm.model");
        Assert.assertEquals(codegen.apiPackage(), "xyz.yyyyy.aaaaa.api");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.API_PACKAGE), "xyz.yyyyy.aaaaa.api");
        Assert.assertEquals(codegen.getInvokerPackage(), "xyz.yyyyy.iiii.invoker");
        Assert.assertEquals(codegen.additionalProperties().get(CodegenConstants.INVOKER_PACKAGE), "xyz.yyyyy.iiii.invoker");
        Assert.assertEquals(codegen.getBasePackage(), "xyz.yyyyy.bbbb.base");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.BASE_PACKAGE), "xyz.yyyyy.bbbb.base");
        Assert.assertEquals(codegen.getConfigPackage(), "xyz.yyyyy.cccc.config");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.CONFIG_PACKAGE), "xyz.yyyyy.cccc.config");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.TITLE), "someTest");
        Assert.assertEquals(codegen.additionalProperties().get(SpringCodegen.SERVER_PORT), "8088");
    }

    @Test
    public void interfaceDefaultImplDisableWithReponseWrapper() {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.additionalProperties().put(SpringCodegen.JAVA_8, true);
        codegen.additionalProperties().put(RESPONSE_WRAPPER, "aWrapper");
        codegen.processOpts();

        Assert.assertEquals(codegen.additionalProperties().get("jdk8"), false);
    }

    @Test
    public void doNotGenerateRequestParamForObjectQueryParam() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/objectQueryParam.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileNotContains(generator, outputPath + "/src/main/java/org/openapitools/api/PonyApi.java", "@RequestParam");
    }

    @Test
    public void generateFormatForDateAndDateTimeQueryParam() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/issue_2053.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        ClientOptInput input = new ClientOptInput();
        input.openAPI(openAPI);
        input.config(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileContains(
                generator,
                outputPath + "/src/main/java/org/openapitools/api/ElephantsApi.java",
                "@org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE)"
        );
        checkFileContains(
                generator,
                outputPath + "/src/main/java/org/openapitools/api/ZebrasApi.java",
                "@org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE_TIME)"
        );
    }

    @Test
    public void shouldGenerateRequestParamForRefParams_3248_Regression() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/3248-regression.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/ExampleApi.java",
                "@RequestParam(value = \"format\"",
                "@RequestParam(value = \"query\"");
    }

    @Test
    public void shouldGenerateRequestParamForRefParams_3248_RegressionDates() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/3248-regression-dates.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/ExampleApi.java",
                "@RequestParam(value = \"start\"");
    }

    // Helper function, intended to reduce boilerplate
    private Map<String, String> generateFiles(SpringCodegen codegen, String filePath) throws IOException {
        final File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        final String outputPath = output.getAbsolutePath().replace('\\', '/');

        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        final ClientOptInput input = new ClientOptInput();
        final OpenAPI openAPI = new OpenAPIParser().readLocation(filePath, null, new ParseOptions()).getOpenAPI();
        input.openAPI(openAPI);
        input.config(codegen);

        final MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        return generator.getFiles().entrySet().stream().collect(Collectors.toMap(e -> e.getKey().replace(outputPath, ""), Map.Entry::getValue));
    }

    @Test
    public void testMultipartBoot() throws IOException {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.setLibrary("spring-boot");
        codegen.setDelegatePattern(true);

        final Map<String, String> files = generateFiles(codegen, "src/test/resources/3_0/form-multipart-binary-array.yaml");

        // Check that the delegate handles the array
        final String multipartArrayApiDelegate = files.get("/src/main/java/org/openapitools/api/MultipartArrayApiDelegate.java");
        Assert.assertTrue(multipartArrayApiDelegate.contains("List<MultipartFile> files"));

        // Check that the api handles the array
        final String multipartArrayApi = files.get("/src/main/java/org/openapitools/api/MultipartArrayApi.java");
        Assert.assertTrue(multipartArrayApi.contains("List<MultipartFile> files"));
        Assert.assertTrue(multipartArrayApi.contains("@ApiParam(value = \"Many files\")"));
        Assert.assertTrue(multipartArrayApi.contains("@RequestPart(value = \"files\", required = false)"));

        // Check that the delegate handles the single file
        final String multipartSingleApiDelegate = files.get("/src/main/java/org/openapitools/api/MultipartSingleApiDelegate.java");
        Assert.assertTrue(multipartSingleApiDelegate.contains("MultipartFile file"));

        // Check that the api handles the single file
        final String multipartSingleApi = files.get("/src/main/java/org/openapitools/api/MultipartSingleApi.java");
        Assert.assertTrue(multipartSingleApi.contains("MultipartFile file"));
        Assert.assertTrue(multipartSingleApi.contains("@ApiParam(value = \"One file\")"));
        Assert.assertTrue(multipartSingleApi.contains("@RequestPart(value = \"file\", required = false)"));

        // Check that api validates mixed multipart request
        final String multipartMixedApi = files.get("/src/main/java/org/openapitools/api/MultipartMixedApi.java");
        Assert.assertTrue(multipartMixedApi.contains("MultipartFile file"));
        Assert.assertTrue(multipartMixedApi.contains("@RequestPart(value = \"file\", required = true)"));
        System.out.println(multipartMixedApi);
        Assert.assertTrue(multipartMixedApi.contains("@Valid @RequestPart(value = \"marker\", required = false)"));
    }

    @Test
    public void testMultipartCloud() throws IOException {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.setLibrary("spring-cloud");
        codegen.setDelegatePattern(true);

        final Map<String, String> files = generateFiles(codegen, "src/test/resources/3_0/form-multipart-binary-array.yaml");

        // Check that the delegate handles the array and the file
        final String multipartApiDelegate = files.get("/src/main/java/org/openapitools/api/MultipartApiDelegate.java");
        Assert.assertTrue(multipartApiDelegate.contains("List<MultipartFile> files"));
        Assert.assertTrue(multipartApiDelegate.contains("MultipartFile file"));

        // Check that the api handles the array and the file
        final String multipartApi = files.get("/src/main/java/org/openapitools/api/MultipartApi.java");
        Assert.assertTrue(multipartApi.contains("List<MultipartFile> files"));
        Assert.assertTrue(multipartApi.contains("MultipartFile file"));
    }

    @Test
    public void doGenerateRequestParamForSimpleParam() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/issue_3248.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        ClientOptInput input = new ClientOptInput();
        input.openAPI(openAPI);
        input.config(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/MonkeysApi.java", "@RequestParam");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/ElephantsApi.java", "@RequestParam");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/ZebrasApi.java", "@RequestParam");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/BearsApi.java", "@RequestParam");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/CamelsApi.java", "@RequestParam");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/PandasApi.java", "@RequestParam");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/CrocodilesApi.java", "@RequestParam");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/PolarBearsApi.java", "@RequestParam");

    }

    private void checkFileNotContains(MockDefaultGenerator generator, String path, String... lines) {
        String file = generator.getFiles().get(path);
        assertNotNull(file);
        for (String line : lines)
            assertFalse(file.contains(line));
    }

    private void checkFileContains(MockDefaultGenerator generator, String path, String... lines) {
        String file = generator.getFiles().get(path);
        assertNotNull(file);
        int expectedCount = lines.length;
        int actualCount = 0;
        for (String line : lines) {
            if (file.contains(line)) {
                actualCount++;
            }
        }
        assertEquals(actualCount, expectedCount, "File is missing " + (expectedCount - actualCount) + " expected lines.");
    }

    @Test
    public void clientOptsUnicity() {
        SpringCodegen codegen = new SpringCodegen();
        codegen.cliOptions()
                .stream()
                .collect(groupingBy(CliOption::getOpt))
                .forEach((k, v) -> assertEquals(v.size(), 1, k + " is described multiple times"));
    }

    @Test
    public void springcloudWithJava8DisabeJdk8() {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.additionalProperties().put(SpringCodegen.JAVA_8, true);
        codegen.additionalProperties().put(CodegenConstants.LIBRARY, "spring-cloud");
        codegen.processOpts();

        Assert.assertEquals(codegen.additionalProperties().get("jdk8-default-interface"), false);
    }

    @Test
    public void springcloudWithAsyncHasResponseWrapperCallable() {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.additionalProperties().put(SpringCodegen.JAVA_8, false);
        codegen.additionalProperties().put(SpringCodegen.ASYNC, true);
        codegen.additionalProperties().put(CodegenConstants.LIBRARY, "spring-cloud");
        codegen.processOpts();

        Assert.assertNull(codegen.additionalProperties().get("jdk8-default-interface"));
        Assert.assertEquals(codegen.additionalProperties().get(RESPONSE_WRAPPER), "Callable");
    }

    @Test
    public void springcloudWithAsyncAndJava8HasResponseWrapperCompletableFuture() {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.additionalProperties().put(SpringCodegen.JAVA_8, true);
        codegen.additionalProperties().put(SpringCodegen.ASYNC, true);
        codegen.additionalProperties().put(CodegenConstants.LIBRARY, "spring-cloud");
        codegen.processOpts();

        Assert.assertEquals(codegen.additionalProperties().get("jdk8-default-interface"), false);
        Assert.assertEquals(codegen.additionalProperties().get(RESPONSE_WRAPPER), "CompletableFuture");
    }

    @Test(expectedExceptions = IllegalArgumentException.class)
    public void reactiveRequiredSpringBoot() {
        final SpringCodegen codegen = new SpringCodegen();
        codegen.additionalProperties().put(SpringCodegen.REACTIVE, true);
        codegen.additionalProperties().put(CodegenConstants.LIBRARY, "spring-cloud");
        codegen.processOpts();
    }

    @Test
    public void testDoGenerateRequestBodyRequiredAttribute_3134_Regression() throws Exception {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/3134-regression.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/ExampleApi.java",
                "@RequestBody(required = false");
    }

    @Test
    public void useBeanValidationTruePerformBeanValidationTrueJava8FalseForFormatEmail() throws IOException {
        beanValidationForFormatEmail(true, true, false, "@org.hibernate.validator.constraints.Email", "@javax.validation.constraints.Email");
    }

    @Test
    public void useBeanValidationTruePerformBeanValidationFalseJava8TrueForFormatEmail() throws IOException {
        beanValidationForFormatEmail(true, false, true, "@javax.validation.constraints.Email", "@org.hibernate.validator.constraints.Email");
    }

    @Test
    public void useBeanValidationTruePerformBeanValidationTrueJava8TrueForFormatEmail() throws IOException {
        beanValidationForFormatEmail(true, true, true, "@javax.validation.constraints.Email", "@org.hibernate.validator.constraints.Email");
    }

    private void beanValidationForFormatEmail(boolean useBeanValidation, boolean performBeanValidation, boolean java8, String contains, String notContains) throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/issue_4876_format_email.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.setUseBeanValidation(useBeanValidation);
        codegen.setPerformBeanValidation(performBeanValidation);
        codegen.setJava8(java8);

        ClientOptInput input = new ClientOptInput();
        input.openAPI(openAPI);
        input.config(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/model/PersonWithEmail.java", contains);
        checkFileNotContains(generator, outputPath + "/src/main/java/org/openapitools/model/PersonWithEmail.java", notContains);
    }

    @Test
    public void testDefaultValuesFixed() {
        // we had an issue where int64, float, and double values were having single character string suffixes
        // included in their defaultValues
        // This test verifies that those characters are no longer present
        final OpenAPI openAPI = TestUtils.parseFlattenSpec("src/test/resources/2_0/issue1226.yaml");
        final SpringCodegen codegen = new SpringCodegen();
        codegen.setOpenAPI(openAPI);

        String int64Val = "9223372036854775807l";
        String floatVal = "3.14159f";
        String doubleVal = "3.14159d";

        // make sure that the model properties include character suffixes
        String modelName = "NumberHolder";
        Schema nhSchema = openAPI.getComponents().getSchemas().get(modelName);
        CodegenModel cm = codegen.fromModel(modelName, nhSchema);
        CodegenProperty int64Prop = cm.vars.get(0);
        CodegenProperty floatProp = cm.vars.get(1);
        CodegenProperty doubleProp = cm.vars.get(2);
        Assert.assertEquals(int64Prop.defaultValue, int64Val);
        Assert.assertEquals(floatProp.defaultValue, floatVal);
        Assert.assertEquals(doubleProp.defaultValue, doubleVal);

        int64Val = "9223372036854775807";
        floatVal = "3.14159";
        doubleVal = "3.14159";

        // make sure that the operation parameters omit character suffixes
        String route = "/numericqueryparams";
        Operation op = openAPI.getPaths().get(route).getGet();
        CodegenOperation co = codegen.fromOperation(route, "GET", op, null);
        CodegenParameter int64Param = co.queryParams.get(0);
        CodegenParameter floatParam = co.queryParams.get(1);
        CodegenParameter doubleParam = co.queryParams.get(2);
        Assert.assertEquals(int64Param.defaultValue, int64Val);
        Assert.assertEquals(floatParam.defaultValue, floatVal);
        Assert.assertEquals(doubleParam.defaultValue, doubleVal);
    }

    @Test
    public void doGenerateCookieParams() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/issue_5386.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        ClientOptInput input = new ClientOptInput();
        input.openAPI(openAPI);
        input.config(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/ElephantsApi.java", "@CookieValue");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/ZebrasApi.java", "@CookieValue");
        checkFileNotContains(generator, outputPath + "/src/main/java/org/openapitools/api/BirdsApi.java", "@CookieValue");
    }

    @Test
    public void doAnnotateDatesOnModelParameters() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/issue_5436.yml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");

        ClientOptInput input = new ClientOptInput();
        input.openAPI(openAPI);
        input.config(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/api/ZebrasApi.java",
                "AnimalParams");
        checkFileContains(generator, outputPath + "/src/main/java/org/openapitools/model/AnimalParams.java",
                "@org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE)",
                "@org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE_TIME)");
    }

    @Test
    public void testPreAuthorizeOnOauth() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/security-oauth.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");
        codegen.additionalProperties().put(SpringCodegen.USE_SPRING_SECURITY, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        String path = outputPath + "/src/main/java/org/openapitools/api/PetsApi.java";
        checkFileContains(generator, path,
                "@PreAuthorize(\"(hasAuthority('write_pets') and hasAuthority('rw_pets')) or (hasAuthority('read_pets'))\")");
    }

    @Test
    public void testPreAuthorizeOnGlobalOauth() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/security-oauth.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");
        codegen.additionalProperties().put(SpringCodegen.USE_SPRING_SECURITY, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        String path = outputPath + "/src/main/java/org/openapitools/api/PetsApi.java";
        checkFileContains(generator, path,
                "@PreAuthorize(\"(hasAuthority('read_pets'))\")");
    }

    @Test
    public void testDisableSpringSecurityForOauth() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/security-oauth.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");
        codegen.additionalProperties().put(SpringCodegen.USE_SPRING_SECURITY, "false");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        String path = outputPath + "/src/main/java/org/openapitools/api/PetsApi.java";
        checkFileNotContains(generator, path,
                "hasAuthority('write_pets'");
        checkFileNotContains(generator, path, "hasAuthority('read_pets");
        checkFileNotContains(generator, path, "@PreAuthorize(\"");
        checkFileNotContains(generator, path, "import org.springframework.security.access.prepost.PreAuthorize;\n");
    }

    @Test
    public void testPreAuthorizeOnJwtAuth() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/security-oauth-bearer.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");
        codegen.additionalProperties().put(SpringCodegen.USE_SPRING_SECURITY, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        String path = outputPath + "/src/main/java/org/openapitools/api/PetsApi.java";
        checkFileContains(generator, path,
                "@PreAuthorize(\"(hasAuthority('scope:another')) or (hasAuthority('scope:specific'))\")");
    }

    @Test
    public void testDisableSpringSecurityForJwtAuth() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/security-oauth-bearer.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");
        codegen.additionalProperties().put(SpringCodegen.USE_SPRING_SECURITY, "false");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        String path = outputPath + "/src/main/java/org/openapitools/api/PetsApi.java";
        checkFileNotContains(generator, path,
                "@PreAuthorize(\"hasAuthority('scope:another') or hasAuthority('scope:specific')\")");
    }

    @Test
    public void testPreAuthorizeOnGlobalJwtAuth() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/security-oauth-bearer.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");
        codegen.additionalProperties().put(SpringCodegen.USE_SPRING_SECURITY, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        String path = outputPath + "/src/main/java/org/openapitools/api/PetsApi.java";
        checkFileContains(generator, path,
                "@PreAuthorize(\"(hasAuthority('scope:global'))\")");
    }

    @Test
    public void testTwoOauthScopes() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/two-oauth-scopes.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");
        codegen.additionalProperties().put(SpringCodegen.USE_SPRING_SECURITY, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        String path = outputPath + "/src/main/java/org/openapitools/api/PetsApi.java";
        checkFileContains(generator, path,
                "@PreAuthorize(\"(hasAuthority('user') and hasAuthority('admin'))\")");
    }

    @Test
    public void noAuth() throws IOException {
        File output = Files.createTempDirectory("test").toFile().getCanonicalFile();
        output.deleteOnExit();
        String outputPath = output.getAbsolutePath().replace('\\', '/');

        OpenAPI openAPI = new OpenAPIParser()
                .readLocation("src/test/resources/3_0/no-auth.yaml", null, new ParseOptions()).getOpenAPI();

        SpringCodegen codegen = new SpringCodegen();
        codegen.setOutputDir(output.getAbsolutePath());
        codegen.additionalProperties().put(CXFServerFeatures.LOAD_TEST_DATA_FROM_FILE, "true");
        codegen.additionalProperties().put(SpringCodegen.USE_SPRING_SECURITY, "true");

        ClientOptInput input = new ClientOptInput();
        input.setOpenAPI(openAPI);
        input.setConfig(codegen);

        MockDefaultGenerator generator = new MockDefaultGenerator();
        generator.opts(input).generate();

        String path = outputPath + "/src/main/java/org/openapitools/api/PetsApi.java";
        checkFileContains(generator, path,
                "@ApiOperation(value = \"Get the pet\", nickname = \"petsGet\", notes = \"\", tags={  })",
                "@ApiResponses(value = {  })",
                "@RequestMapping(value = \"/pets\",",
                "method = RequestMethod.GET)",
                "default ResponseEntity<Void> petsGet() {",
                "return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);"
        );
    }
}
