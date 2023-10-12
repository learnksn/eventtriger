import ballerinax/trigger.hubspot;
import ballerina/http;

configurable hubspot:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener hubspot:Listener webhookListener =  new(config,httpListener);

service hubspot:ContactService on webhookListener {
  
    remote function onContactCreation(hubspot:WebhookEvent event) returns error? {
      //Not Implemented
    }
    remote function onContactDeletion(hubspot:WebhookEvent event) returns error? {
      //Not Implemented
    }
    remote function onContactPropertychange(hubspot:WebhookEvent event) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}