// Auto-generated. Do not edit!

// (in-package s_c_plusminus.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let output = require('../msg/output.js');

//-----------------------------------------------------------

class plusminus_servRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.inp1 = null;
      this.inp2 = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
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
    // Serializes a message object of type plusminus_servRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [inp1]
    bufferOffset = _serializer.int16(obj.inp1, buffer, bufferOffset);
    // Serialize message field [inp2]
    bufferOffset = _serializer.int16(obj.inp2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plusminus_servRequest
    let len;
    let data = new plusminus_servRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [inp1]
    data.inp1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [inp2]
    data.inp2 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 's_c_plusminus/plusminus_servRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '347a1b1972ef0811be4ba9fb2c72ee0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string command
    int16 inp1
    int16 inp2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new plusminus_servRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
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

class plusminus_servResponse {
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
        this.response = new output();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type plusminus_servResponse
    // Serialize message field [response]
    bufferOffset = output.serialize(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plusminus_servResponse
    let len;
    let data = new plusminus_servResponse(null);
    // Deserialize message field [response]
    data.response = output.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += output.getMessageSize(object.response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 's_c_plusminus/plusminus_servResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9e80d5e6563aabd179f85f26537c29a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    s_c_plusminus/output response
    
    
    ================================================================================
    MSG: s_c_plusminus/output
    string equation
    int16 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new plusminus_servResponse(null);
    if (msg.response !== undefined) {
      resolved.response = output.Resolve(msg.response)
    }
    else {
      resolved.response = new output()
    }

    return resolved;
    }
};

module.exports = {
  Request: plusminus_servRequest,
  Response: plusminus_servResponse,
  md5sum() { return '30760a2ae78bf5e8cc7c7a4386966418'; },
  datatype() { return 's_c_plusminus/plusminus_serv'; }
};
