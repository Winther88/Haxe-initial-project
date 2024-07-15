// Generated by Haxe 4.3.4
#ifndef INCLUDED_haxe_iterators_DynamicAccessIterator
#define INCLUDED_haxe_iterators_DynamicAccessIterator

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS2(haxe,iterators,DynamicAccessIterator)

namespace haxe{
namespace iterators{


class HXCPP_CLASS_ATTRIBUTES DynamicAccessIterator_obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef DynamicAccessIterator_obj OBJ_;
		DynamicAccessIterator_obj();

	public:
		enum { _hx_ClassId = 0x175a41b2 };

		void __construct( ::Dynamic access);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="haxe.iterators.DynamicAccessIterator")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,true,"haxe.iterators.DynamicAccessIterator"); }
		static ::hx::ObjectPtr< DynamicAccessIterator_obj > __new( ::Dynamic access);
		static ::hx::ObjectPtr< DynamicAccessIterator_obj > __alloc(::hx::Ctx *_hx_ctx, ::Dynamic access);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~DynamicAccessIterator_obj();

		HX_DO_RTTI_ALL;
		::hx::Val __Field(const ::String &inString, ::hx::PropertyAccess inCallProp);
		::hx::Val __SetField(const ::String &inString,const ::hx::Val &inValue, ::hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("DynamicAccessIterator",71,c3,e1,09); }

		 ::Dynamic access;
		::Array< ::String > keys;
		int index;
		bool hasNext();
		::Dynamic hasNext_dyn();

		 ::Dynamic next();
		::Dynamic next_dyn();

};

} // end namespace haxe
} // end namespace iterators

#endif /* INCLUDED_haxe_iterators_DynamicAccessIterator */ 
