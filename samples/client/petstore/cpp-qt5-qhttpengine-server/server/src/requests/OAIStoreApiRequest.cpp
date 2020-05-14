/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QVariantMap>
#include <QDebug>

#include "OAIHelpers.h"
#include "OAIStoreApiRequest.h"

namespace OpenAPI {

OAIStoreApiRequest::OAIStoreApiRequest(QHttpEngine::Socket *s, QSharedPointer<OAIStoreApiHandler> hdl) : QObject(s), socket(s), handler(hdl) {
    auto headers = s->headers();
    for(auto itr = headers.begin(); itr != headers.end(); itr++) {
        requestHeaders.insert(QString(itr.key()), QString(itr.value()));
    }
}

OAIStoreApiRequest::~OAIStoreApiRequest(){
    disconnect(this, nullptr, nullptr, nullptr);
    qDebug() << "OAIStoreApiRequest::~OAIStoreApiRequest()";
}

QMap<QString, QString>
OAIStoreApiRequest::getRequestHeaders() const {
    return requestHeaders;
}

void OAIStoreApiRequest::setResponseHeaders(const QMultiMap<QString, QString>& headers){
    for(auto itr = headers.begin(); itr != headers.end(); ++itr) {
        responseHeaders.insert(itr.key(), itr.value());
    }
}


QHttpEngine::Socket* OAIStoreApiRequest::getRawSocket(){
    return socket;
}


void OAIStoreApiRequest::deleteOrderRequest(const QString& order_idstr){
    qDebug() << "/v2/store/order/{orderId}";
    connect(this, &OAIStoreApiRequest::deleteOrder, handler.data(), &OAIStoreApiHandler::deleteOrder);

    
    QString order_id;
    fromStringValue(order_idstr, order_id);
    

    emit deleteOrder(order_id);
}


void OAIStoreApiRequest::getInventoryRequest(){
    qDebug() << "/v2/store/inventory";
    connect(this, &OAIStoreApiRequest::getInventory, handler.data(), &OAIStoreApiHandler::getInventory);

    


    emit getInventory();
}


void OAIStoreApiRequest::getOrderByIdRequest(const QString& order_idstr){
    qDebug() << "/v2/store/order/{orderId}";
    connect(this, &OAIStoreApiRequest::getOrderById, handler.data(), &OAIStoreApiHandler::getOrderById);

    
    qint64 order_id;
    fromStringValue(order_idstr, order_id);
    

    emit getOrderById(order_id);
}


void OAIStoreApiRequest::placeOrderRequest(){
    qDebug() << "/v2/store/order";
    connect(this, &OAIStoreApiRequest::placeOrder, handler.data(), &OAIStoreApiHandler::placeOrder);

    
 
    
    QJsonDocument doc;
    socket->readJson(doc);
    QJsonObject obj = doc.object();
    OAIOrder oai_order;
    ::OpenAPI::fromJsonValue(oai_order, obj);
    

    emit placeOrder(oai_order);
}



void OAIStoreApiRequest::deleteOrderResponse(){
    writeResponseHeaders();
    socket->setStatusCode(QHttpEngine::Socket::OK);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIStoreApiRequest::getInventoryResponse(const QMap<QString, qint32>& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIStoreApiRequest::getOrderByIdResponse(const OAIOrder& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIStoreApiRequest::placeOrderResponse(const OAIOrder& res){
    writeResponseHeaders();
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}


void OAIStoreApiRequest::deleteOrderError(QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    socket->setStatusCode(QHttpEngine::Socket::NotFound);
    socket->write(error_str.toUtf8());
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIStoreApiRequest::getInventoryError(const QMap<QString, qint32>& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIStoreApiRequest::getOrderByIdError(const OAIOrder& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}

void OAIStoreApiRequest::placeOrderError(const OAIOrder& res, QNetworkReply::NetworkError error_type, QString& error_str){
    Q_UNUSED(error_type); // TODO: Remap error_type to QHttpEngine::Socket errors
    writeResponseHeaders();
    Q_UNUSED(error_str);  // response will be used instead of error string
    QJsonDocument resDoc(::OpenAPI::toJsonValue(res).toObject());
    socket->writeJson(resDoc);
    if(socket->isOpen()){
        socket->close();
    }
}


void OAIStoreApiRequest::sendCustomResponse(QByteArray & res, QNetworkReply::NetworkError error_type){
    Q_UNUSED(error_type); // TODO
    socket->write(res);
    if(socket->isOpen()){
        socket->close();
    }    
}

void OAIStoreApiRequest::sendCustomResponse(QIODevice *res, QNetworkReply::NetworkError error_type){
    Q_UNUSED(error_type);  // TODO
    socket->write(res->readAll());
    if(socket->isOpen()){
        socket->close();
    }
}

}
