# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from s_c_plusminus/plusminus_servRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class plusminus_servRequest(genpy.Message):
  _md5sum = "347a1b1972ef0811be4ba9fb2c72ee0e"
  _type = "s_c_plusminus/plusminus_servRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string command
int16 inp1
int16 inp2
"""
  __slots__ = ['command','inp1','inp2']
  _slot_types = ['string','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       command,inp1,inp2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(plusminus_servRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.command is None:
        self.command = ''
      if self.inp1 is None:
        self.inp1 = 0
      if self.inp2 is None:
        self.inp2 = 0
    else:
      self.command = ''
      self.inp1 = 0
      self.inp2 = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.command
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2h().pack(_x.inp1, _x.inp2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.command = str[start:end].decode('utf-8')
      else:
        self.command = str[start:end]
      _x = self
      start = end
      end += 4
      (_x.inp1, _x.inp2,) = _get_struct_2h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.command
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2h().pack(_x.inp1, _x.inp2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.command = str[start:end].decode('utf-8')
      else:
        self.command = str[start:end]
      _x = self
      start = end
      end += 4
      (_x.inp1, _x.inp2,) = _get_struct_2h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2h = None
def _get_struct_2h():
    global _struct_2h
    if _struct_2h is None:
        _struct_2h = struct.Struct("<2h")
    return _struct_2h
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from s_c_plusminus/plusminus_servResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import s_c_plusminus.msg

class plusminus_servResponse(genpy.Message):
  _md5sum = "c9e80d5e6563aabd179f85f26537c29a"
  _type = "s_c_plusminus/plusminus_servResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """s_c_plusminus/output response


================================================================================
MSG: s_c_plusminus/output
string equation
int16 result
"""
  __slots__ = ['response']
  _slot_types = ['s_c_plusminus/output']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       response

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(plusminus_servResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.response is None:
        self.response = s_c_plusminus.msg.output()
    else:
      self.response = s_c_plusminus.msg.output()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.response.equation
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_h().pack(self.response.result))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.response is None:
        self.response = s_c_plusminus.msg.output()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.response.equation = str[start:end].decode('utf-8')
      else:
        self.response.equation = str[start:end]
      start = end
      end += 2
      (self.response.result,) = _get_struct_h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.response.equation
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_h().pack(self.response.result))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.response is None:
        self.response = s_c_plusminus.msg.output()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.response.equation = str[start:end].decode('utf-8')
      else:
        self.response.equation = str[start:end]
      start = end
      end += 2
      (self.response.result,) = _get_struct_h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_h = None
def _get_struct_h():
    global _struct_h
    if _struct_h is None:
        _struct_h = struct.Struct("<h")
    return _struct_h
class plusminus_serv(object):
  _type          = 's_c_plusminus/plusminus_serv'
  _md5sum = '30760a2ae78bf5e8cc7c7a4386966418'
  _request_class  = plusminus_servRequest
  _response_class = plusminus_servResponse
