// Auto-generated. Do not edit!

// (in-package plus_minus_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class what_input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.comand = null;
      this.inp1 = null;
      this.inp2 = null;
    }
    else {
      if (initObj.hasOwnProperty('comand')) {
        this.comand = initObj.comand
      }
      else {
        this.comand = '';
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
    // Serializes a message object of type what_input
    // Serialize message field [comand]
    bufferOffset = _serializer.string(obj.comand, buffer, bufferOffset);
    // Serialize message field [inp1]
    bufferOffset = _serializer.int16(obj.inp1, buffer, bufferOffset);
    // Serialize message field [inp2]
    bufferOffset = _serializer.int16(obj.inp2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type what_input
    let len;
    let data = new what_input(null);
    // Deserialize message field [comand]
    data.comand = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [inp1]
    data.inp1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [inp2]
    data.inp2 = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.comand.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plus_minus_msg/what_input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8ac08cd95c64326d8f6b9dae5d070dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string comand
    int16 inp1
    int16 inp2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new what_input(null);
    if (msg.comand !== undefined) {
      resolved.comand = msg.comand;
    }
    else {
      resolved.comand = ''
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

module.exports = what_input;
