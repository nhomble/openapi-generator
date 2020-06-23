/*
 * OpenAPI Petstore
 *
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 * Generated by: https://openapi-generator.tech
 */

#[allow(unused_imports)]
use std::rc::Rc;

use std::option::Option;

use reqwest;

use crate::apis::ResponseContent;
use super::{Error, configuration};

/// struct for passing parameters to the method `create_user`
#[derive(Clone, Debug)]
pub struct CreateUserParams {
    /// Created user object
    pub body: crate::models::User
}

/// struct for passing parameters to the method `create_users_with_array_input`
#[derive(Clone, Debug)]
pub struct CreateUsersWithArrayInputParams {
    /// List of user object
    pub body: Vec<crate::models::User>
}

/// struct for passing parameters to the method `create_users_with_list_input`
#[derive(Clone, Debug)]
pub struct CreateUsersWithListInputParams {
    /// List of user object
    pub body: Vec<crate::models::User>
}

/// struct for passing parameters to the method `delete_user`
#[derive(Clone, Debug)]
pub struct DeleteUserParams {
    /// The name that needs to be deleted
    pub username: String
}

/// struct for passing parameters to the method `get_user_by_name`
#[derive(Clone, Debug)]
pub struct GetUserByNameParams {
    /// The name that needs to be fetched. Use user1 for testing.
    pub username: String
}

/// struct for passing parameters to the method `login_user`
#[derive(Clone, Debug)]
pub struct LoginUserParams {
    /// The user name for login
    pub username: String,
    /// The password for login in clear text
    pub password: String
}

/// struct for passing parameters to the method `update_user`
#[derive(Clone, Debug)]
pub struct UpdateUserParams {
    /// name that need to be deleted
    pub username: String,
    /// Updated user object
    pub body: crate::models::User
}


/// struct for typed successes of method `create_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CreateUserSuccess {
    UnknownValue(serde_json::Value),
}

/// struct for typed successes of method `create_users_with_array_input`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CreateUsersWithArrayInputSuccess {
    UnknownValue(serde_json::Value),
}

/// struct for typed successes of method `create_users_with_list_input`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CreateUsersWithListInputSuccess {
    UnknownValue(serde_json::Value),
}

/// struct for typed successes of method `delete_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum DeleteUserSuccess {
    UnknownValue(serde_json::Value),
}

/// struct for typed successes of method `get_user_by_name`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum GetUserByNameSuccess {
    Status200(crate::models::User),
    UnknownValue(serde_json::Value),
}

/// struct for typed successes of method `login_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum LoginUserSuccess {
    Status200(String),
    UnknownValue(serde_json::Value),
}

/// struct for typed successes of method `logout_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum LogoutUserSuccess {
    UnknownValue(serde_json::Value),
}

/// struct for typed successes of method `update_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum UpdateUserSuccess {
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method `create_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CreateUserError {
    DefaultResponse(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method `create_users_with_array_input`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CreateUsersWithArrayInputError {
    DefaultResponse(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method `create_users_with_list_input`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum CreateUsersWithListInputError {
    DefaultResponse(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method `delete_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum DeleteUserError {
    Status400(),
    Status404(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method `get_user_by_name`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum GetUserByNameError {
    Status400(),
    Status404(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method `login_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum LoginUserError {
    Status400(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method `logout_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum LogoutUserError {
    DefaultResponse(),
    UnknownValue(serde_json::Value),
}

/// struct for typed errors of method `update_user`
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(untagged)]
pub enum UpdateUserError {
    Status400(),
    Status404(),
    UnknownValue(serde_json::Value),
}


    pub async fn create_user(configuration: &configuration::Configuration, params: CreateUserParams) -> Result<ResponseContent<CreateUserSuccess>, Error<CreateUserError>> {
        // unbox the parameters
        let body = params.body;

        let client = &configuration.client;

        let uri_str = format!("{}/user", configuration.base_path);
        let mut req_builder = client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.json(&body);

        let req = req_builder.build()?;
        let resp = client.execute(req).await?;

        let status = resp.status();
        let content = resp.text().await?;

        if status.is_success() {
            let entity: Option<CreateUserSuccess> = serde_json::from_str(&content).ok();
            let result = ResponseContent { status, content, entity };
            Ok(result)
        } else {
            let entity: Option<CreateUserError> = serde_json::from_str(&content).ok();
            let error = ResponseContent { status, content, entity };
            Err(Error::ResponseError(error))
        }
    }

    pub async fn create_users_with_array_input(configuration: &configuration::Configuration, params: CreateUsersWithArrayInputParams) -> Result<ResponseContent<CreateUsersWithArrayInputSuccess>, Error<CreateUsersWithArrayInputError>> {
        // unbox the parameters
        let body = params.body;

        let client = &configuration.client;

        let uri_str = format!("{}/user/createWithArray", configuration.base_path);
        let mut req_builder = client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.json(&body);

        let req = req_builder.build()?;
        let resp = client.execute(req).await?;

        let status = resp.status();
        let content = resp.text().await?;

        if status.is_success() {
            let entity: Option<CreateUsersWithArrayInputSuccess> = serde_json::from_str(&content).ok();
            let result = ResponseContent { status, content, entity };
            Ok(result)
        } else {
            let entity: Option<CreateUsersWithArrayInputError> = serde_json::from_str(&content).ok();
            let error = ResponseContent { status, content, entity };
            Err(Error::ResponseError(error))
        }
    }

    pub async fn create_users_with_list_input(configuration: &configuration::Configuration, params: CreateUsersWithListInputParams) -> Result<ResponseContent<CreateUsersWithListInputSuccess>, Error<CreateUsersWithListInputError>> {
        // unbox the parameters
        let body = params.body;

        let client = &configuration.client;

        let uri_str = format!("{}/user/createWithList", configuration.base_path);
        let mut req_builder = client.post(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.json(&body);

        let req = req_builder.build()?;
        let resp = client.execute(req).await?;

        let status = resp.status();
        let content = resp.text().await?;

        if status.is_success() {
            let entity: Option<CreateUsersWithListInputSuccess> = serde_json::from_str(&content).ok();
            let result = ResponseContent { status, content, entity };
            Ok(result)
        } else {
            let entity: Option<CreateUsersWithListInputError> = serde_json::from_str(&content).ok();
            let error = ResponseContent { status, content, entity };
            Err(Error::ResponseError(error))
        }
    }

    pub async fn delete_user(configuration: &configuration::Configuration, params: DeleteUserParams) -> Result<ResponseContent<DeleteUserSuccess>, Error<DeleteUserError>> {
        // unbox the parameters
        let username = params.username;

        let client = &configuration.client;

        let uri_str = format!("{}/user/{username}", configuration.base_path, username=crate::apis::urlencode(username));
        let mut req_builder = client.delete(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }

        let req = req_builder.build()?;
        let resp = client.execute(req).await?;

        let status = resp.status();
        let content = resp.text().await?;

        if status.is_success() {
            let entity: Option<DeleteUserSuccess> = serde_json::from_str(&content).ok();
            let result = ResponseContent { status, content, entity };
            Ok(result)
        } else {
            let entity: Option<DeleteUserError> = serde_json::from_str(&content).ok();
            let error = ResponseContent { status, content, entity };
            Err(Error::ResponseError(error))
        }
    }

    pub async fn get_user_by_name(configuration: &configuration::Configuration, params: GetUserByNameParams) -> Result<ResponseContent<GetUserByNameSuccess>, Error<GetUserByNameError>> {
        // unbox the parameters
        let username = params.username;

        let client = &configuration.client;

        let uri_str = format!("{}/user/{username}", configuration.base_path, username=crate::apis::urlencode(username));
        let mut req_builder = client.get(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }

        let req = req_builder.build()?;
        let resp = client.execute(req).await?;

        let status = resp.status();
        let content = resp.text().await?;

        if status.is_success() {
            let entity: Option<GetUserByNameSuccess> = serde_json::from_str(&content).ok();
            let result = ResponseContent { status, content, entity };
            Ok(result)
        } else {
            let entity: Option<GetUserByNameError> = serde_json::from_str(&content).ok();
            let error = ResponseContent { status, content, entity };
            Err(Error::ResponseError(error))
        }
    }

    pub async fn login_user(configuration: &configuration::Configuration, params: LoginUserParams) -> Result<ResponseContent<LoginUserSuccess>, Error<LoginUserError>> {
        // unbox the parameters
        let username = params.username;
        let password = params.password;

        let client = &configuration.client;

        let uri_str = format!("{}/user/login", configuration.base_path);
        let mut req_builder = client.get(uri_str.as_str());

        req_builder = req_builder.query(&[("username", &username.to_string())]);
        req_builder = req_builder.query(&[("password", &password.to_string())]);
        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }

        let req = req_builder.build()?;
        let resp = client.execute(req).await?;

        let status = resp.status();
        let content = resp.text().await?;

        if status.is_success() {
            let entity: Option<LoginUserSuccess> = serde_json::from_str(&content).ok();
            let result = ResponseContent { status, content, entity };
            Ok(result)
        } else {
            let entity: Option<LoginUserError> = serde_json::from_str(&content).ok();
            let error = ResponseContent { status, content, entity };
            Err(Error::ResponseError(error))
        }
    }

    pub async fn logout_user(configuration: &configuration::Configuration) -> Result<ResponseContent<LogoutUserSuccess>, Error<LogoutUserError>> {
        // unbox the parameters

        let client = &configuration.client;

        let uri_str = format!("{}/user/logout", configuration.base_path);
        let mut req_builder = client.get(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }

        let req = req_builder.build()?;
        let resp = client.execute(req).await?;

        let status = resp.status();
        let content = resp.text().await?;

        if status.is_success() {
            let entity: Option<LogoutUserSuccess> = serde_json::from_str(&content).ok();
            let result = ResponseContent { status, content, entity };
            Ok(result)
        } else {
            let entity: Option<LogoutUserError> = serde_json::from_str(&content).ok();
            let error = ResponseContent { status, content, entity };
            Err(Error::ResponseError(error))
        }
    }

    pub async fn update_user(configuration: &configuration::Configuration, params: UpdateUserParams) -> Result<ResponseContent<UpdateUserSuccess>, Error<UpdateUserError>> {
        // unbox the parameters
        let username = params.username;
        let body = params.body;

        let client = &configuration.client;

        let uri_str = format!("{}/user/{username}", configuration.base_path, username=crate::apis::urlencode(username));
        let mut req_builder = client.put(uri_str.as_str());

        if let Some(ref user_agent) = configuration.user_agent {
            req_builder = req_builder.header(reqwest::header::USER_AGENT, user_agent.clone());
        }
        req_builder = req_builder.json(&body);

        let req = req_builder.build()?;
        let resp = client.execute(req).await?;

        let status = resp.status();
        let content = resp.text().await?;

        if status.is_success() {
            let entity: Option<UpdateUserSuccess> = serde_json::from_str(&content).ok();
            let result = ResponseContent { status, content, entity };
            Ok(result)
        } else {
            let entity: Option<UpdateUserError> = serde_json::from_str(&content).ok();
            let error = ResponseContent { status, content, entity };
            Err(Error::ResponseError(error))
        }
    }

