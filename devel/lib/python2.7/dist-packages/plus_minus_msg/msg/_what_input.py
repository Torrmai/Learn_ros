# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from plus_minus_msg/what_input.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class what_input(genpy.Message):
  _md5sum = "f2076654e2eb2259bf9ab3a7dff817cd"
  _type = "plus_minus_msg/what_input"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string comand
int16 inp1
int16 inp2
int16 result
"""
  __slots__ = ['comand','inp1','inp2','result']
  _slot_types = ['string','int16','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       comand,inp1,inp2,result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(what_input, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.comand is None:
        self.comand = ''
      if self.inp1 is None:
        self.inp1 = 0
      if self.inp2 is None:
        self.inp2 = 0
      if self.result is None:
        self.result = 0
    else:
      self.comand = ''
      self.inp1 = 0
      self.inp2 = 0
      self.result = 0

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
      _x = self.comand
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3h().pack(_x.inp1, _x.inp2, _x.result))
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
        self.comand = str[start:end].decode('utf-8')
      else:
        self.comand = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.inp1, _x.inp2, _x.result,) = _get_struct_3h().unpack(str[start:end])
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
      _x = self.comand
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3h().pack(_x.inp1, _x.inp2, _x.result))
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
        self.comand = str[start:end].decode('utf-8')
      else:
        self.comand = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.inp1, _x.inp2, _x.result,) = _get_struct_3h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3h = None
def _get_struct_3h():
    global _struct_3h
    if _struct_3h is None:
        _struct_3h = struct.Struct("<3h")
    return _struct_3h
