// Auto-generated. Do not edit!

// (in-package test_ser_cli.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let test_create_msg_new = _finder('test_create_msg_new');

//-----------------------------------------------------------

class robot_serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_serviceRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_serviceRequest
    let len;
    let data = new robot_serviceRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_ser_cli/robot_serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_serviceRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class robot_serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = new test_create_msg_new.msg.robot_detail();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_serviceResponse
    // Serialize message field [response]
    bufferOffset = test_create_msg_new.msg.robot_detail.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_serviceResponse
    let len;
    let data = new robot_serviceResponse(null);
    // Deserialize message field [response]
    data.response = test_create_msg_new.msg.robot_detail.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += test_create_msg_new.msg.robot_detail.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_ser_cli/robot_serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2369367726d718615d2024a5db3fae29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    test_create_msg_new/robot_detail response
    
    
    ================================================================================
    MSG: test_create_msg_new/robot_detail
    string name
    int16 year
    int16 weight
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_serviceResponse(null);
    if (msg.response !== undefined) {
      resolved.response = test_create_msg_new.msg.robot_detail.Resolve(msg.response)
    }
    else {
      resolved.response = new test_create_msg_new.msg.robot_detail()
    }

    return resolved;
    }
};

module.exports = {
  Request: robot_serviceRequest,
  Response: robot_serviceResponse,
  md5sum() { return '8800708100fda626f86c83189e112add'; },
  datatype() { return 'test_ser_cli/robot_service'; }
};
