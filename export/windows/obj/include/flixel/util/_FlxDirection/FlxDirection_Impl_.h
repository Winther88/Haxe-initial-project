// Generated by Haxe 4.3.4
#ifndef INCLUDED_flixel_util__FlxDirection_FlxDirection_Impl_
#define INCLUDED_flixel_util__FlxDirection_FlxDirection_Impl_

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS3(flixel,util,_FlxDirection,FlxDirection_Impl_)

namespace flixel{
namespace util{
namespace _FlxDirection{


class HXCPP_CLASS_ATTRIBUTES FlxDirection_Impl__obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef FlxDirection_Impl__obj OBJ_;
		FlxDirection_Impl__obj();

	public:
		enum { _hx_ClassId = 0x57f41e3b };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=false,const char *inName="flixel.util._FlxDirection.FlxDirection_Impl_")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,false,"flixel.util._FlxDirection.FlxDirection_Impl_"); }

		inline static ::hx::ObjectPtr< FlxDirection_Impl__obj > __new() {
			::hx::ObjectPtr< FlxDirection_Impl__obj > __this = new FlxDirection_Impl__obj();
			__this->__construct();
			return __this;
		}

		inline static ::hx::ObjectPtr< FlxDirection_Impl__obj > __alloc(::hx::Ctx *_hx_ctx) {
			FlxDirection_Impl__obj *__this = (FlxDirection_Impl__obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(FlxDirection_Impl__obj), false, "flixel.util._FlxDirection.FlxDirection_Impl_"));
			*(void **)__this = FlxDirection_Impl__obj::_hx_vtable;
			return __this;
		}

		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~FlxDirection_Impl__obj();

		HX_DO_RTTI_ALL;
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("FlxDirection_Impl_",ed,8f,56,85); }

		static void __boot();
		static int LEFT;
		static int RIGHT;
		static int UP;
		static int DOWN;
		static ::String toString(int this1);
		static ::Dynamic toString_dyn();

};

} // end namespace flixel
} // end namespace util
} // end namespace _FlxDirection

#endif /* INCLUDED_flixel_util__FlxDirection_FlxDirection_Impl_ */ 
