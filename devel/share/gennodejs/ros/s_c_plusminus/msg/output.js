// Auto-generated. Do not edit!

// (in-package s_c_plusminus.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class output {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.equation = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('equation')) {
        this.equation = initObj.equation
      }
      else {
        this.equation = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type output
    // Serialize message field [equation]
    bufferOffset = _serializer.string(obj.equation, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.int16(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type output
    let len;
    let data = new output(null);
    // Deserialize message field [equation]
    data.equation = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.equation.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 's_c_plusminus/output';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bab23f51d169221c4e582476e5ea309';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string equation
    int16 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new output(null);
    if (msg.equation !== undefined) {
      resolved.equation = msg.equation;
    }
    else {
      resolved.equation = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = output;
