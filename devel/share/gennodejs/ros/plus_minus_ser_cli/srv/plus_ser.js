// Auto-generated. Do not edit!

// (in-package plus_minus_ser_cli.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class plus_serRequest {
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
    // Serializes a message object of type plus_serRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [inp1]
    bufferOffset = _serializer.int16(obj.inp1, buffer, bufferOffset);
    // Serialize message field [inp2]
    bufferOffset = _serializer.int16(obj.inp2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plus_serRequest
    let len;
    let data = new plus_serRequest(null);
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
    return 'plus_minus_ser_cli/plus_serRequest';
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
    const resolved = new plus_serRequest(null);
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

class plus_serResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.eq = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('eq')) {
        this.eq = initObj.eq
      }
      else {
        this.eq = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type plus_serResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int16(obj.result, buffer, bufferOffset);
    // Serialize message field [eq]
    bufferOffset = _serializer.string(obj.eq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type plus_serResponse
    let len;
    let data = new plus_serResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [eq]
    data.eq = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.eq.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plus_minus_ser_cli/plus_serResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1de2031bd85ae7c5679a89a32f6c623';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 result
    string eq
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new plus_serResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.eq !== undefined) {
      resolved.eq = msg.eq;
    }
    else {
      resolved.eq = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: plus_serRequest,
  Response: plus_serResponse,
  md5sum() { return '924fbc742266a2d82feb8ba54d391a66'; },
  datatype() { return 'plus_minus_ser_cli/plus_ser'; }
};
