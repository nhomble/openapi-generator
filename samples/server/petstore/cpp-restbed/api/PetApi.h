/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.0.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * PetApi.h
 *
 * 
 */

#ifndef PetApi_H_
#define PetApi_H_


#include <memory>
#include <utility>

#include <corvusoft/restbed/session.hpp>
#include <corvusoft/restbed/resource.hpp>
#include <corvusoft/restbed/service.hpp>

#include "ApiResponse.h"
#include "Pet.h"
#include <string>

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

class  PetApi: public restbed::Service
{
public:
	PetApi();
	~PetApi();
	void startService(int const& port);
	void stopService();
};


/// <summary>
/// Add a new pet to the store
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  PetApiPetResource: public restbed::Resource
{
public:
	PetApiPetResource();
    virtual ~PetApiPetResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
    void PUT_method_handler(const std::shared_ptr<restbed::Session> session);

	void set_handler_POST(
		std::function<std::pair<int, std::string>(
			std::shared_ptr<Pet> const &
		)> handler
	);

	void set_handler_PUT(
		std::function<std::pair<int, std::string>(
			std::shared_ptr<Pet> const &
		)> handler
	);

private:
	std::function<std::pair<int, std::string>(
		std::shared_ptr<Pet> const &
	)> handler_POST_;

	std::function<std::pair<int, std::string>(
		std::shared_ptr<Pet> const &
	)> handler_PUT_;

	std::shared_ptr<Pet> pet{};
};

/// <summary>
/// Deletes a pet
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  PetApiPetPetIdResource: public restbed::Resource
{
public:
	PetApiPetPetIdResource();
    virtual ~PetApiPetPetIdResource();
    void DELETE_method_handler(const std::shared_ptr<restbed::Session> session);
    void GET_method_handler(const std::shared_ptr<restbed::Session> session);
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);

	void set_handler_DELETE(
		std::function<std::pair<int, std::string>(
			int64_t const &, std::string const &
		)> handler
	);

	void set_handler_GET(
		std::function<std::pair<int, std::string>(
			int64_t const &
		)> handler
	);
	void set_handler_POST(
		std::function<std::pair<int, std::string>(
			int64_t const &, std::string const &, std::string const &
		)> handler
	);

private:
	std::function<std::pair<int, std::string>(
		int64_t const &, std::string const &
	)> handler_DELETE_;

	std::function<std::pair<int, std::string>(
		int64_t const &
	)> handler_GET_;
	std::function<std::pair<int, std::string>(
		int64_t const &, std::string const &, std::string const &
	)> handler_POST_;

	int64_t petId{};
	std::string apiKey{};
};

/// <summary>
/// Finds Pets by status
/// </summary>
/// <remarks>
/// Multiple status values can be provided with comma separated strings
/// </remarks>
class  PetApiPetFindByStatusResource: public restbed::Resource
{
public:
	PetApiPetFindByStatusResource();
    virtual ~PetApiPetFindByStatusResource();
    void GET_method_handler(const std::shared_ptr<restbed::Session> session);

	void set_handler_GET(
		std::function<std::pair<int, std::string>(
			std::vector<std::string> const &
		)> handler
	);


private:
	std::function<std::pair<int, std::string>(
		std::vector<std::string> const &
	)> handler_GET_;


	std::vector<std::string> status{};
};

/// <summary>
/// Finds Pets by tags
/// </summary>
/// <remarks>
/// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
/// </remarks>
class  PetApiPetFindByTagsResource: public restbed::Resource
{
public:
	PetApiPetFindByTagsResource();
    virtual ~PetApiPetFindByTagsResource();
    void GET_method_handler(const std::shared_ptr<restbed::Session> session);

	void set_handler_GET(
		std::function<std::pair<int, std::string>(
			std::vector<std::string> const &
		)> handler
	);


private:
	std::function<std::pair<int, std::string>(
		std::vector<std::string> const &
	)> handler_GET_;


	std::vector<std::string> tags{};
};

/// <summary>
/// uploads an image
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  PetApiPetPetIdUploadImageResource: public restbed::Resource
{
public:
	PetApiPetPetIdUploadImageResource();
    virtual ~PetApiPetPetIdUploadImageResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);

	void set_handler_POST(
		std::function<std::pair<int, std::string>(
			int64_t const &, std::string const &, std::string const &
		)> handler
	);


private:
	std::function<std::pair<int, std::string>(
		int64_t const &, std::string const &, std::string const &
	)> handler_POST_;


	int64_t petId{};
	std::string additionalMetadata{};
	std::string file{};
};


}
}
}
}

#endif /* PetApi_H_ */

