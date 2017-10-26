// Auto-generated. Do not edit!

// (in-package plus_minus_servic.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let plus_minus_msg = _finder('plus_minus_msg');

//-----------------------------------------------------------

class kamtoobRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.com = null;
      this.inp1 = null;
      this.inp2 = null;
    }
    else {
      if (initObj.hasOwnProperty('com')) {
        this.com = initObj.com
      }
      else {
        this.com = '';
      }
      if (initObj.hasOwnProperty('inp1')) {
        this.inp1 = initObj.inp1
      }
      else {
        this.inp1 = 0;
      }
      if (initObj.hasOwnProperty('inp2')) {
        this.inp2 = initObj.inp2
      }
      else {
        this.inp2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kamtoobRequest
    // Serialize message field [com]
    bufferOffset = _serializer.string(obj.com, buffer, bufferOffset);
    // Serialize message field [inp1]
    bufferOffset = _serializer.int16(obj.inp1, buffer, bufferOffset);
    // Serialize message field [inp2]
    bufferOffset = _serializer.int16(obj.inp2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kamtoobRequest
    let len;
    let data = new kamtoobRequest(null);
    // Deserialize message field [com]
    data.com = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [inp1]
    data.inp1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [inp2]
    data.inp2 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.com.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plus_minus_servic/kamtoobRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '705269294ba19629e5138c6205aef8a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string com
    int16 inp1
    int16 inp2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kamtoobRequest(null);
    if (msg.com !== undefined) {
      resolved.com = msg.com;
    }
    else {
      resolved.com = ''
    }

    if (msg.inp1 !== undefined) {
      resolved.inp1 = msg.inp1;
    }
    else {
      resolved.inp1 = 0
    }

    if (msg.inp2 !== undefined) {
      resolved.inp2 = msg.inp2;
    }
    else {
      resolved.inp2 = 0
    }

    return resolved;
    }
};

class kamtoobResponse {
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
        this.response = new plus_minus_msg.msg.what_input();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kamtoobResponse
    // Serialize message field [response]
    bufferOffset = plus_minus_msg.msg.what_input.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kamtoobResponse
    let len;
    let data = new kamtoobResponse(null);
    // Deserialize message field [response]
    data.response = plus_minus_msg.msg.what_input.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += plus_minus_msg.msg.what_input.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plus_minus_servic/kamtoobResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2870aa204943fa08ca8877035f95e07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    plus_minus_msg/what_input response
    
    
    ================================================================================
    MSG: plus_minus_msg/what_input
    string comand
    int16 inp1
    int16 inp2
    int16 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kamtoobResponse(null);
    if (msg.response !== undefined) {
      resolved.response = plus_minus_msg.msg.what_input.Resolve(msg.response)
    }
    else {
      resolved.response = new plus_minus_msg.msg.what_input()
    }

    return resolved;
    }
};

module.exports = {
  Request: kamtoobRequest,
  Response: kamtoobResponse,
  md5sum() { return 'b82aa0d59edba103ba71ad6a815f7270'; },
  datatype() { return 'plus_minus_servic/kamtoob'; }
};
