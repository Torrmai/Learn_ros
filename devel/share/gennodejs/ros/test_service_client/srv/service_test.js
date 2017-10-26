// Auto-generated. Do not edit!

// (in-package test_service_client.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class service_testRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.requestNO = null;
      this.request = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('requestNO')) {
        this.requestNO = initObj.requestNO
      }
      else {
        this.requestNO = 0;
      }
      if (initObj.hasOwnProperty('request')) {
        this.request = initObj.request
      }
      else {
        this.request = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type service_testRequest
    // Serialize message field [requestNO]
    bufferOffset = _serializer.int16(obj.requestNO, buffer, bufferOffset);
    // Serialize message field [request]
    bufferOffset = std_msgs.msg.String.serialize(obj.request, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type service_testRequest
    let len;
    let data = new service_testRequest(null);
    // Deserialize message field [requestNO]
    data.requestNO = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [request]
    data.request = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.request);
    length += object.data.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_service_client/service_testRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '387f88e6d0e323049141ac3c7e9cf38e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 requestNO
    std_msgs/String request
    string data
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new service_testRequest(null);
    if (msg.requestNO !== undefined) {
      resolved.requestNO = msg.requestNO;
    }
    else {
      resolved.requestNO = 0
    }

    if (msg.request !== undefined) {
      resolved.request = std_msgs.msg.String.Resolve(msg.request)
    }
    else {
      resolved.request = new std_msgs.msg.String()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

class service_testResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.responseNO = null;
      this.response = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('responseNO')) {
        this.responseNO = initObj.responseNO
      }
      else {
        this.responseNO = 0;
      }
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type service_testResponse
    // Serialize message field [responseNO]
    bufferOffset = _serializer.int16(obj.responseNO, buffer, bufferOffset);
    // Serialize message field [response]
    bufferOffset = std_msgs.msg.String.serialize(obj.response, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type service_testResponse
    let len;
    let data = new service_testResponse(null);
    // Deserialize message field [responseNO]
    data.responseNO = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [response]
    data.response = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.response);
    length += object.data.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_service_client/service_testResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ed594ba4a704fdda314cc3d72ee7561';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int16 responseNO
    std_msgs/String response
    string data
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new service_testResponse(null);
    if (msg.responseNO !== undefined) {
      resolved.responseNO = msg.responseNO;
    }
    else {
      resolved.responseNO = 0
    }

    if (msg.response !== undefined) {
      resolved.response = std_msgs.msg.String.Resolve(msg.response)
    }
    else {
      resolved.response = new std_msgs.msg.String()
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: service_testRequest,
  Response: service_testResponse,
  md5sum() { return '834f928ec74381cd9b270dead49151fa'; },
  datatype() { return 'test_service_client/service_test'; }
};
