#include "xamarin/xamarin.h"

extern void *mono_aot_module_TaskTimeriOS_info;
extern void *mono_aot_module_Xamarin_iOS_info;
extern void *mono_aot_module_mscorlib_info;
extern void *mono_aot_module_System_info;
extern void *mono_aot_module_System_Xml_info;
extern void *mono_aot_module_System_Core_info;
extern void *mono_aot_module_Mono_Dynamic_Interpreter_info;
extern void *mono_aot_module_Auth0Client_iOS_info;
extern void *mono_aot_module_Newtonsoft_Json_info;
extern void *mono_aot_module_System_Runtime_Serialization_info;
extern void *mono_aot_module_Xamarin_Auth_iOS_info;
extern void *mono_aot_module_System_Json_info;
extern void *mono_aot_module_TaskTimer_info;
extern void *mono_aot_module_Xamarin_Forms_Core_info;
extern void *mono_aot_module_SQLite_net_info;
extern void *mono_aot_module_SQLitePCL_raw_info;
extern void *mono_aot_module_Autofac_info;
extern void *mono_aot_module_XLabs_Core_info;
extern void *mono_aot_module_Xamarin_Insights_info;
extern void *mono_aot_module_PLCrashReporterUnifiedBinding_info;
extern void *mono_aot_module_System_Net_Http_info;
extern void *mono_aot_module_PubSub_info;
extern void *mono_aot_module_Xamarin_Forms_Xaml_info;
extern void *mono_aot_module_Xamarin_Forms_Platform_iOS_info;

void xamarin_register_modules ()
{
	mono_aot_register_module (mono_aot_module_TaskTimeriOS_info);
	mono_aot_register_module (mono_aot_module_Xamarin_iOS_info);
	mono_aot_register_module (mono_aot_module_mscorlib_info);
	mono_aot_register_module (mono_aot_module_System_info);
	mono_aot_register_module (mono_aot_module_System_Xml_info);
	mono_aot_register_module (mono_aot_module_System_Core_info);
	mono_aot_register_module (mono_aot_module_Mono_Dynamic_Interpreter_info);
	mono_aot_register_module (mono_aot_module_Auth0Client_iOS_info);
	mono_aot_register_module (mono_aot_module_Newtonsoft_Json_info);
	mono_aot_register_module (mono_aot_module_System_Runtime_Serialization_info);
	mono_aot_register_module (mono_aot_module_Xamarin_Auth_iOS_info);
	mono_aot_register_module (mono_aot_module_System_Json_info);
	mono_aot_register_module (mono_aot_module_TaskTimer_info);
	mono_aot_register_module (mono_aot_module_Xamarin_Forms_Core_info);
	mono_aot_register_module (mono_aot_module_SQLite_net_info);
	mono_aot_register_module (mono_aot_module_SQLitePCL_raw_info);
	mono_aot_register_module (mono_aot_module_Autofac_info);
	mono_aot_register_module (mono_aot_module_XLabs_Core_info);
	mono_aot_register_module (mono_aot_module_Xamarin_Insights_info);
	mono_aot_register_module (mono_aot_module_PLCrashReporterUnifiedBinding_info);
	mono_aot_register_module (mono_aot_module_System_Net_Http_info);
	mono_aot_register_module (mono_aot_module_PubSub_info);
	mono_aot_register_module (mono_aot_module_Xamarin_Forms_Xaml_info);
	mono_aot_register_module (mono_aot_module_Xamarin_Forms_Platform_iOS_info);

}

void xamarin_register_assemblies ()
{
	xamarin_open_and_register ("Xamarin.iOS.dll");
	xamarin_open_and_register ("Xamarin.Auth.iOS.dll");
	xamarin_open_and_register ("PLCrashReporterUnifiedBinding.dll");
	xamarin_open_and_register ("Xamarin.Forms.Platform.iOS.dll");

}

void xamarin_setup ()
{
	xamarin_use_old_dynamic_registrar = FALSE;
	xamarin_create_classes ();
	xamarin_init_mono_debug = FALSE;
	xamarin_executable_name = "TaskTimeriOS.exe";
	xamarin_use_new_assemblies = 1;
	mono_use_llvm = FALSE;
	xamarin_log_level = 0;
	xamarin_new_refcount = TRUE;
	setenv ("MONO_GC_PARAMS", "nursery-size=512k", 1);
}

int main (int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int rv = xamarin_main (argc, argv, false);
	[pool drain];
	return rv;
}
