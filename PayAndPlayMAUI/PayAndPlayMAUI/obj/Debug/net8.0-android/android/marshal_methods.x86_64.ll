; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [540 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1080 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 307
	i64 41321585999485087, ; 1: cs\Humanizer.resources => 0x92cdc3770e189f => 371
	i64 87581036036292584, ; 2: bg\Humanizer.resources => 0x137267cfe00ffe8 => 369
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 216
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 5: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 229
	i64 147864158106373369, ; 6: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x20d51ab1af14cf9 => 456
	i64 181099460066822533, ; 7: Microcharts.Droid.dll => 0x28364ffda4c4985 => 177
	i64 182106475126841455, ; 8: Humanizer.dll => 0x286f8dfd13be06f => 176
	i64 196720943101637631, ; 9: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 10: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 294
	i64 218243443877096319, ; 11: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x3075b4182da2b7f => 455
	i64 229794953483747371, ; 12: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 13: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 335
	i64 276471738906638264, ; 14: NuGet.LibraryModel.dll => 0x3d63994ebf6f7b8 => 247
	i64 295915112840604065, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 338
	i64 313293977520445317, ; 16: zh-CN\Humanizer.resources.dll => 0x4590b3670601785 => 411
	i64 316157742385208084, ; 17: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 301
	i64 326406607831425625, ; 18: ru\Microsoft.CodeAnalysis.resources.dll => 0x487a1149821e259 => 423
	i64 350667413455104241, ; 19: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 374214195677100225, ; 20: Microsoft.CodeAnalysis.Razor => 0x53179d40b3df8c1 => 193
	i64 406486731283901647, ; 21: es\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x5a4218748162ccf => 442
	i64 422779754995088667, ; 22: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 23: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 337
	i64 455940612404211789, ; 24: es\Microsoft.CodeAnalysis.Workspaces.resources => 0x653d3924106f04d => 494
	i64 496929328902369351, ; 25: cs\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6e572977fb2f047 => 440
	i64 535597045548414309, ; 26: NuGet.ProjectModel => 0x76ed2acdaa97565 => 249
	i64 560278790331054453, ; 27: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 628098050054629041, ; 28: is\Humanizer.resources => 0x8b773d9459f26b1 => 385
	i64 634256334200181332, ; 29: Microsoft.CodeAnalysis.CSharp.dll => 0x8cd54c6888b1254 => 188
	i64 634308326490598313, ; 30: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 320
	i64 641670810394036365, ; 31: PayAndPlayMAUI => 0x8e7ac33cc46088d => 0
	i64 649145001856603771, ; 32: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 670564002081277297, ; 33: Microsoft.Identity.Client.dll => 0x94e526837380571 => 217
	i64 702024105029695270, ; 34: System.Drawing.Common => 0x9be17343c0e7726 => 265
	i64 716654442676844823, ; 35: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x9f2116b2a757917 => 452
	i64 726593401349421218, ; 36: vi\Humanizer.resources => 0xa1560d94f9338a2 => 410
	i64 737318085524959015, ; 37: NuGet.Frameworks => 0xa3b7ae46e2faf27 => 246
	i64 742388989842837819, ; 38: Microsoft.VisualStudio.Web.CodeGenerators.Mvc => 0xa4d7eda58be513b => 239
	i64 750875890346172408, ; 39: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 766770282063650139, ; 40: sr\Humanizer.resources => 0xaa41d824ebadd5b => 402
	i64 780588404640540820, ; 41: ms-MY\Humanizer.resources.dll => 0xad53504ae636894 => 391
	i64 798450721097591769, ; 42: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 295
	i64 799765834175365804, ; 43: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 44: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 517
	i64 856745483922317989, ; 45: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xbe3c57a781c22a5 => 465
	i64 872800313462103108, ; 46: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 306
	i64 895210737996778430, ; 47: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 321
	i64 895583451341852636, ; 48: Microsoft.Build.Framework.dll => 0xc6dc0676bf30fdc => 185
	i64 917904283621948910, ; 49: zh-Hans\Microsoft.CodeAnalysis.Features.resources => 0xcbd0d152b187dee => 477
	i64 937459790420187032, ; 50: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 232
	i64 940822596282819491, ; 51: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 52: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 989127641070905171, ; 53: cs\Microsoft.CodeAnalysis.CSharp.resources => 0xdba1659538d2753 => 427
	i64 1010599046655515943, ; 54: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1027655141085176894, ; 55: NuGet.DependencyResolver.Core.dll => 0xe42f6e7f3fc643e => 245
	i64 1038220935101773657, ; 56: uk\Humanizer.resources.dll => 0xe688070931d7759 => 407
	i64 1060858978308751610, ; 57: Azure.Core.dll => 0xeb8ed9ebee080fa => 173
	i64 1120440138749646132, ; 58: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 350
	i64 1176030902986760664, ; 59: ja\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x105219e0196861d8 => 432
	i64 1264098730510327121, ; 60: it\Microsoft.CodeAnalysis.Workspaces.resources => 0x118afb1911171d51 => 496
	i64 1268860745194512059, ; 61: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 62: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 202
	i64 1290330591097798837, ; 63: PayAndPlayMAUI.dll => 0x11e82cd60d3440b5 => 0
	i64 1301626418029409250, ; 64: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 65: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 286
	i64 1361298542975918955, ; 66: Microsoft.VisualStudio.Web.CodeGeneration.Templating => 0x12e44dcff756236b => 237
	i64 1369545283391376210, ; 67: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 328
	i64 1404195534211153682, ; 68: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1416135423712704079, ; 69: Microcharts => 0x13a71faa343e364f => 178
	i64 1425944114962822056, ; 70: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 71: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1484341423788646703, ; 72: de\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x149970a91a51e12f => 441
	i64 1486715745332614827, ; 73: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 226
	i64 1491290866305144020, ; 74: Xamarin.Google.AutoValue.Annotations.dll => 0x14b2212446e714d4 => 351
	i64 1492407416628141526, ; 75: it\Microsoft.CodeAnalysis.CSharp.resources => 0x14b618a368475dd6 => 431
	i64 1492954217099365037, ; 76: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 77: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 78: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1576750169145655260, ; 79: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 349
	i64 1578461236315596192, ; 80: zh-Hant\Microsoft.CodeAnalysis.resources => 0x15e7d221a250a5a0 => 426
	i64 1580831035586038082, ; 81: NuGet.Versioning.dll => 0x15f03d738604c942 => 251
	i64 1604828716977660633, ; 82: it\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x16457f3720cca2d9 => 444
	i64 1624659445732251991, ; 83: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 285
	i64 1628611045998245443, ; 84: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 324
	i64 1636321030536304333, ; 85: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 314
	i64 1639340239664632727, ; 86: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 179
	i64 1651782184287836205, ; 87: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659106469264733432, ; 88: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x1706548b2113b4f8 => 461
	i64 1659332977923810219, ; 89: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 90: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 91: Newtonsoft.Json => 0x18071957e9b889d7 => 242
	i64 1735388228521408345, ; 92: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1741042453479892310, ; 93: tr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x18296ce3128b2556 => 450
	i64 1743969030606105336, ; 94: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 95: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 96: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 284
	i64 1825687700144851180, ; 97: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 98: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 511
	i64 1836611346387731153, ; 99: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 335
	i64 1854145951182283680, ; 100: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 101: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 183
	i64 1875417405349196092, ; 102: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 103: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 281
	i64 1881198190668717030, ; 104: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 533
	i64 1897575647115118287, ; 105: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 337
	i64 1920760634179481754, ; 106: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 227
	i64 1956582621840560024, ; 107: de\Microsoft.CodeAnalysis.CSharp.resources => 0x1b272d8734824f98 => 428
	i64 1966367835830129316, ; 108: fr\Microsoft.CodeAnalysis.Workspaces.resources => 0x1b49f120e06892a4 => 495
	i64 1972384582241139858, ; 109: Microsoft.CodeAnalysis.CSharp => 0x1b5f5153d0f0bc92 => 188
	i64 1972385128188460614, ; 110: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 111: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 322
	i64 2031290047871406080, ; 112: pl\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x1c3097894b295000 => 447
	i64 2040001226662520565, ; 113: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 114: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 115: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 359
	i64 2075546959977054240, ; 116: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore => 0x1ccdd2f6a0130020 => 236
	i64 2077488400323790517, ; 117: Microsoft.CodeAnalysis.Features.dll => 0x1cd4b8b16e4b46b5 => 192
	i64 2080945842184875448, ; 118: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 119: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 120: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 121: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 242
	i64 2165252314452558154, ; 122: Xamarin.AndroidX.Camera.Camera2.dll => 0x1e0c85820c09814a => 289
	i64 2165310824878145998, ; 123: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 278
	i64 2165725771938924357, ; 124: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 288
	i64 2188424039095181899, ; 125: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x1e5ed8119c31a24b => 455
	i64 2192948757939169934, ; 126: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 200
	i64 2200176636225660136, ; 127: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 214
	i64 2219986950236918443, ; 128: tr\Microsoft.CodeAnalysis.CSharp.resources => 0x1ecefa5e86dfd2ab => 437
	i64 2262844636196693701, ; 129: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 306
	i64 2275252695863103437, ; 130: System.Reflection.MetadataLoadContext.dll => 0x1f935245a72b8fcd => 269
	i64 2283766573134170374, ; 131: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x1fb191992d92c906 => 500
	i64 2287834202362508563, ; 132: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 133: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 134: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 334
	i64 2315304989185124968, ; 135: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 136: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 223
	i64 2323958648452149394, ; 137: cs\Microsoft.CodeAnalysis.resources => 0x20405c13f1aff092 => 414
	i64 2329709569556905518, ; 138: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 317
	i64 2335503487726329082, ; 139: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 140: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2347015728160852727, ; 141: uz-Cyrl-UZ\Humanizer.resources.dll => 0x2092465ea7484af7 => 408
	i64 2352472270739883180, ; 142: Microsoft.DotNet.Scaffolding.Shared => 0x20a5a910f96844ac => 198
	i64 2391088182243165216, ; 143: Microsoft.VisualStudio.Web.CodeGeneration.Utils => 0x212eda08813d0420 => 238
	i64 2398049273691867220, ; 144: it\Humanizer.resources.dll => 0x2147951be8498854 => 386
	i64 2455121377850707897, ; 145: NuGet.Frameworks.dll => 0x221257e2a7424fb9 => 246
	i64 2470498323731680442, ; 146: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 299
	i64 2479423007379663237, ; 147: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 344
	i64 2497223385847772520, ; 148: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2530193663219599640, ; 149: fr\Microsoft.CodeAnalysis.resources.dll => 0x231d0dbb2d260918 => 417
	i64 2547086958574651984, ; 150: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 279
	i64 2554797818648757682, ; 151: System.Runtime.Caching.dll => 0x23747714858085b2 => 270
	i64 2565166297354812447, ; 152: zh-Hant\Humanizer.resources => 0x23994d2817a33c1f => 413
	i64 2592350477072141967, ; 153: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 154: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 532
	i64 2606170708597053130, ; 155: Microsoft.AspNetCore.Identity.EntityFrameworkCore => 0x242afa738df496ca => 181
	i64 2612152650457191105, ; 156: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 224
	i64 2624866290265602282, ; 157: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 158: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 159: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 207
	i64 2662981627730767622, ; 160: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 507
	i64 2704260652175460545, ; 161: System.Composition.Convention => 0x258776bc40fc08c1 => 259
	i64 2706075432581334785, ; 162: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2746068332251068081, ; 163: da\Humanizer.resources => 0x261bfe9950c636b1 => 372
	i64 2768338167292098076, ; 164: hr\Humanizer.resources.dll => 0x266b1ce55799f61c => 381
	i64 2780813979559651871, ; 165: pl\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x26976f94be17ea1f => 486
	i64 2783046991838674048, ; 166: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 167: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 339
	i64 2789714023057451704, ; 168: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 220
	i64 2815524396660695947, ; 169: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2844780895111324988, ; 170: System.Composition.TypedParts => 0x277ab126dceda53c => 262
	i64 2851879596360956261, ; 171: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 263
	i64 2853227249135621881, ; 172: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources => 0x2798b310e83196f9 => 490
	i64 2895129759130297543, ; 173: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 512
	i64 2923871038697555247, ; 174: Jsr305Binding => 0x2893ad37e69ec52f => 352
	i64 2929104377493279868, ; 175: de\Humanizer.resources => 0x28a644e98a87547c => 373
	i64 2947509796159691470, ; 176: Microsoft.Build.dll => 0x28e7a88b04151ace => 184
	i64 2947850844982079217, ; 177: sr-Latn\Humanizer.resources.dll => 0x28e8deb9a1fdeef1 => 403
	i64 2964143786520939826, ; 178: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x2922c111b2c30d32 => 452
	i64 2965696071044998957, ; 179: Microsoft.Build => 0x292844dd1a68a72d => 184
	i64 2980608131069488904, ; 180: ko\Microsoft.CodeAnalysis.resources.dll => 0x295d3f4da309af08 => 420
	i64 3017136373564924869, ; 181: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 182: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 350
	i64 3106852385031680087, ; 183: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 184: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3122911337338800527, ; 185: Microcharts.dll => 0x2b56cf50bf1e898f => 178
	i64 3135773902340015556, ; 186: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3164891818821290784, ; 187: Microsoft.VisualStudio.Web.CodeGeneration.Core.dll => 0x2bebf45745620b20 => 234
	i64 3177281325366702732, ; 188: lv\Humanizer.resources => 0x2c17f8880df6f28c => 390
	i64 3196199893121312905, ; 189: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x2c5b2ede5ca32889 => 448
	i64 3219426262500628937, ; 190: zh-Hans\Humanizer.resources => 0x2cadb320e4e9d9c9 => 412
	i64 3238539556702659506, ; 191: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 240
	i64 3245892109222566308, ; 192: Humanizer => 0x2d0bb9ad057459a4 => 176
	i64 3249191069799534468, ; 193: pl\Microsoft.CodeAnalysis.Features.resources.dll => 0x2d17721022c5cf84 => 473
	i64 3276991435551191081, ; 194: tr\Microsoft.CodeAnalysis.resources => 0x2d7a36593006b029 => 424
	i64 3281594302220646930, ; 195: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3286236885238732615, ; 196: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x2d9b0f093070d747 => 459
	i64 3289520064315143713, ; 197: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 315
	i64 3296267368358378859, ; 198: fr\Humanizer.resources => 0x2dbeb1b507b67d6b => 378
	i64 3300711494004215107, ; 199: az\Humanizer.resources => 0x2dce7b9daa2b8d43 => 368
	i64 3303437397778967116, ; 200: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 282
	i64 3311221304742556517, ; 201: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 202: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 203: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 204: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 362
	i64 3347716888374667791, ; 205: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll => 0x2e757ac5e425ea0f => 236
	i64 3402534845034375023, ; 206: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 266
	i64 3414639567687375782, ; 207: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 255
	i64 3429672777697402584, ; 208: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 229
	i64 3437845325506641314, ; 209: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3485247931931847483, ; 210: NuGet.DependencyResolver.Core => 0x305e168748f66b3b => 245
	i64 3493805808809882663, ; 211: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 341
	i64 3494946837667399002, ; 212: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 205
	i64 3508450208084372758, ; 213: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3518196480742834290, ; 214: hr\Humanizer.resources => 0x30d3250f1cb4c072 => 381
	i64 3519485567556646019, ; 215: af\Humanizer.resources.dll => 0x30d7b97a0653f483 => 366
	i64 3522470458906976663, ; 216: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 340
	i64 3523004241079211829, ; 217: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 204
	i64 3531994851595924923, ; 218: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 219: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 220: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 527
	i64 3571415421602489686, ; 221: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3571549974538685733, ; 222: es\Humanizer.resources => 0x3190b1c769ef0d25 => 375
	i64 3617693510765662356, ; 223: tr\Humanizer.resources.dll => 0x3234a114a76c5094 => 406
	i64 3638003163729360188, ; 224: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 206
	i64 3647754201059316852, ; 225: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 226: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 205
	i64 3659371656528649588, ; 227: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 276
	i64 3716579019761409177, ; 228: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 229: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 333
	i64 3772598417116884899, ; 230: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 307
	i64 3802880763638011883, ; 231: hy\Humanizer.resources.dll => 0x34c68be7efcf57eb => 383
	i64 3824932011597312594, ; 232: mt\Humanizer.resources.dll => 0x3514e36631473252 => 392
	i64 3867113825886090672, ; 233: zh-Hans\Microsoft.CodeAnalysis.Features.resources.dll => 0x35aabf8929f135b0 => 477
	i64 3869221888984012293, ; 234: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 212
	i64 3869649043256705283, ; 235: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 236: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 227
	i64 3919223565570527920, ; 237: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 238: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 239: System.Memory => 0x370b03412596249e => 62
	i64 3986466921713458903, ; 240: System.Composition.Hosting => 0x3752c68b49935ed7 => 260
	i64 4006972109285359177, ; 241: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 242: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4050160939984404678, ; 243: hy\Humanizer.resources => 0x38350fea8eeec0c6 => 383
	i64 4054446190056038390, ; 244: Microsoft.CodeAnalysis.Scripting => 0x384449541739dff6 => 194
	i64 4070326265757318011, ; 245: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 508
	i64 4073500526318903918, ; 246: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 247: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 225
	i64 4103536282112930583, ; 248: pl\Humanizer.resources => 0x38f2b081d244b317 => 396
	i64 4120493066591692148, ; 249: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 538
	i64 4127194541735850366, ; 250: es\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x3946bd91a318b17e => 481
	i64 4148881117810174540, ; 251: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 252: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4159398497900796080, ; 253: pt-BR\Microsoft.CodeAnalysis.Scripting.resources => 0x39b926e57aab98b0 => 487
	i64 4167269041631776580, ; 254: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 255: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 256: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 257: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 301
	i64 4204757096761433397, ; 258: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x3a5a4c4d3f449d35 => 451
	i64 4205801962323029395, ; 259: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 260: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4247844498619075610, ; 261: nl\Humanizer.resources.dll => 0x3af36010c1498c1a => 395
	i64 4248157371830482495, ; 262: es\Microsoft.CodeAnalysis.resources.dll => 0x3af47c9f39e9b63f => 416
	i64 4282138915307457788, ; 263: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4297618840113831272, ; 264: ru\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x3ba43590b902dd68 => 488
	i64 4321865999928413850, ; 265: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 264
	i64 4329480046338915646, ; 266: Microsoft.DotNet.Scaffolding.Shared.dll => 0x3c156729e02c3d3e => 198
	i64 4360412976914417659, ; 267: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 533
	i64 4371205382599439717, ; 268: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x3ca9a422c61d7565 => 453
	i64 4373617458794931033, ; 269: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4379749246949246326, ; 270: tr\Microsoft.CodeAnalysis.Features.resources.dll => 0x3cc7febc35b1c576 => 476
	i64 4397634830160618470, ; 271: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4445901490610013307, ; 272: sv\Humanizer.resources.dll => 0x3db303d9ae30847b => 404
	i64 4477672992252076438, ; 273: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 274: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4501269696413264595, ; 275: fr-BE\Humanizer.resources => 0x3e77b8f0acf16ad3 => 379
	i64 4513320955448359355, ; 276: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 201
	i64 4533124835995628778, ; 277: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4570722926389787063, ; 278: tr\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x3f6e7848ea3279b7 => 450
	i64 4603257529164880280, ; 279: QRCoder => 0x3fe20e556b83d998 => 252
	i64 4612482779465751747, ; 280: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 200
	i64 4633188143799146779, ; 281: fr\Microsoft.CodeAnalysis.resources => 0x404c6411b0b3191b => 417
	i64 4636684751163556186, ; 282: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 345
	i64 4656760805671048172, ; 283: System.Reflection.MetadataLoadContext => 0x40a02347b9fc13ec => 269
	i64 4659009777957576247, ; 284: sr\Humanizer.resources.dll => 0x40a820b5643b9e37 => 402
	i64 4659385769810716620, ; 285: Microsoft.AspNetCore.Identity.EntityFrameworkCore.dll => 0x40a976abd113e7cc => 181
	i64 4672453897036726049, ; 286: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 287: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4725285941539738176, ; 288: Xamarin.AndroidX.Camera.Lifecycle => 0x41939687379f9240 => 291
	i64 4737023577144429365, ; 289: fr\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x41bd49d878580b35 => 495
	i64 4743821336939966868, ; 290: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 291: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 319
	i64 4769962302518424429, ; 292: de\Humanizer.resources.dll => 0x42324f71199d736d => 373
	i64 4782435378178000589, ; 293: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x425e9fa3558f86cd => 462
	i64 4794310189461587505, ; 294: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 279
	i64 4795410492532947900, ; 295: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 340
	i64 4809057822547766521, ; 296: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 297: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4823480931696991453, ; 298: sr-Latn\Humanizer.resources => 0x42f07259faab5cdd => 403
	i64 4848309767277065693, ; 299: ro\Humanizer.resources => 0x4348a80bbf9b35dd => 398
	i64 4849062125611947093, ; 300: Microsoft.VisualStudio.Web.CodeGeneration.dll => 0x434b544fd2e69455 => 233
	i64 4853321196694829351, ; 301: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 302: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 523
	i64 4953714692329509532, ; 303: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 531
	i64 5055365687667823624, ; 304: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 280
	i64 5080318486421939212, ; 305: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x4680eabf2907a40c => 448
	i64 5081566143765835342, ; 306: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5083120864858317402, ; 307: zh-Hans\Microsoft.CodeAnalysis.resources => 0x468adf7ebc41a25a => 425
	i64 5099468265966638712, ; 308: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5101282090298625898, ; 309: ja\Microsoft.CodeAnalysis.Workspaces.resources => 0x46cb65088b4fcf6a => 497
	i64 5103417709280584325, ; 310: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5107702058248948463, ; 311: ru\Microsoft.CodeAnalysis.CSharp.resources => 0x46e233f5d075caef => 436
	i64 5107903599106960149, ; 312: pl\Humanizer.resources.dll => 0x46e2eb42b3b5ab15 => 396
	i64 5182934613077526976, ; 313: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 314: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 326
	i64 5244375036463807528, ; 315: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 316: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 317: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 318: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 318
	i64 5290786973231294105, ; 319: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5341528465380060113, ; 320: ko\Microsoft.CodeAnalysis.Features.resources => 0x4a20ebd6b09dabd1 => 472
	i64 5362325392475259001, ; 321: fr\Microsoft.CodeAnalysis.Features.resources.dll => 0x4a6ace889c8b8079 => 469
	i64 5376510917114486089, ; 322: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 344
	i64 5408338804355907810, ; 323: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 342
	i64 5423376490970181369, ; 324: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 325: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5440726247657876941, ; 326: th-TH\Humanizer.resources => 0x4b8157b22fcaadcd => 405
	i64 5446034149219586269, ; 327: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 328: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 297
	i64 5457765010617926378, ; 329: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 330: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 531
	i64 5478493157351955748, ; 331: NuGet.Protocol.dll => 0x4c078480145f1d24 => 250
	i64 5488847537322884930, ; 332: System.Windows.Extensions => 0x4c2c4dc108687f42 => 274
	i64 5507995362134886206, ; 333: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 334: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 534
	i64 5527431512186326818, ; 335: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5530753022255820472, ; 336: de\Microsoft.CodeAnalysis.Features.resources.dll => 0x4cc12e920ff9eeb8 => 467
	i64 5570799893513421663, ; 337: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 338: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 339: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 283
	i64 5586474322064658720, ; 340: fr\Microsoft.CodeAnalysis.CSharp.resources => 0x4d8724cc29815120 => 430
	i64 5591791169662171124, ; 341: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 342: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5666966988235717116, ; 343: ku\Humanizer.resources.dll => 0x4ea51c736fa7b9fc => 389
	i64 5692067934154308417, ; 344: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 347
	i64 5697338526674305454, ; 345: pl\Microsoft.CodeAnalysis.CSharp.resources => 0x4f1103344791c1ae => 434
	i64 5717718751406333486, ; 346: NuGet.Configuration => 0x4f596ae91f2a1e2e => 244
	i64 5724799082821825042, ; 347: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 310
	i64 5757522595884336624, ; 348: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 296
	i64 5783556987928984683, ; 349: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5802406400352127139, ; 350: Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll => 0x508649e0ef7108a3 => 239
	i64 5896680224035167651, ; 351: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 316
	i64 5959344983920014087, ; 352: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 336
	i64 5979151488806146654, ; 353: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5981100626307227755, ; 354: pt-BR\Microsoft.CodeAnalysis.CSharp.resources => 0x5301235494e8a06b => 435
	i64 5984759512290286505, ; 355: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 5985025747959996647, ; 356: Microsoft.DiaSymReader.dll => 0x530f15352eb8e0e7 => 197
	i64 6027980928648036188, ; 357: ko\Microsoft.CodeAnalysis.Scripting.resources => 0x53a7b0b78ce53f5c => 485
	i64 6037456759088912127, ; 358: ko\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x53c95aef404696ff => 446
	i64 6052006988162547083, ; 359: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x53fd0c4a739c3d8b => 458
	i64 6052904953572895746, ; 360: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x54003cfc50ea2c02 => 463
	i64 6102788177522843259, ; 361: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 336
	i64 6200764641006662125, ; 362: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 528
	i64 6222399776351216807, ; 363: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 364: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 365: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 366: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300676701234028427, ; 367: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 511
	i64 6319713645133255417, ; 368: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 320
	i64 6357457916754632952, ; 369: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 539
	i64 6362365112271840035, ; 370: NuGet.Protocol => 0x584ba95c404d2323 => 250
	i64 6397768165450447711, ; 371: es\Microsoft.CodeAnalysis.CSharp.resources => 0x58c9703fe8f9fb5f => 429
	i64 6400672600465831140, ; 372: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x58d3c1d1625774e4 => 458
	i64 6401687960814735282, ; 373: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 317
	i64 6405571018036478432, ; 374: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x58e528e7199a01e0 => 459
	i64 6433579551879206084, ; 375: fr\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x5948aa840ffa14c4 => 430
	i64 6471714727257221498, ; 376: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 512
	i64 6478287442656530074, ; 377: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 516
	i64 6501546733837973877, ; 378: id\Humanizer.resources => 0x5a3a224ec9037975 => 384
	i64 6504860066809920875, ; 379: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 288
	i64 6548213210057960872, ; 380: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 303
	i64 6554818985595797637, ; 381: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x5af76523736c8085 => 457
	i64 6557084851308642443, ; 382: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 348
	i64 6560151584539558821, ; 383: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 215
	i64 6584419190991186517, ; 384: NuGet.Versioning => 0x5b608e5e534b6a55 => 251
	i64 6589202984700901502, ; 385: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 354
	i64 6591971792923354531, ; 386: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 318
	i64 6602667871317180150, ; 387: nb\Humanizer.resources.dll => 0x5ba163724fbebef6 => 393
	i64 6608986621077214301, ; 388: nb-NO\Humanizer.resources.dll => 0x5bb7d650e29dd45d => 394
	i64 6617685658146568858, ; 389: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6642279005832796386, ; 390: tr\Microsoft.CodeAnalysis.Workspaces.resources => 0x5c2e1d9041b2d8e2 => 502
	i64 6662095722613742648, ; 391: ar\Humanizer.resources => 0x5c7484c32e0a9c38 => 367
	i64 6671798237668743565, ; 392: SkiaSharp => 0x5c96fd260152998d => 253
	i64 6673492278322518085, ; 393: tr\Microsoft.CodeAnalysis.resources.dll => 0x5c9d01de94b9d845 => 424
	i64 6713440830605852118, ; 394: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 395: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 396: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 524
	i64 6772837112740759457, ; 397: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6785756066475633138, ; 398: ja\Microsoft.CodeAnalysis.Features.resources => 0x5e2bd930a2bb69f2 => 471
	i64 6786606130239981554, ; 399: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 400: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6799665367296212282, ; 401: uk\Humanizer.resources => 0x5e5d43a019377d3a => 407
	i64 6800157191326250309, ; 402: Microsoft.CodeAnalysis.CSharp.Workspaces => 0x5e5f02efcdd1b545 => 190
	i64 6814185388980153342, ; 403: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6863477688097626297, ; 404: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x5f3ff897d2e0d8b9 => 503
	i64 6876862101832370452, ; 405: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6881674271711615136, ; 406: pl\Microsoft.CodeAnalysis.Workspaces.resources => 0x5f809e4a1950d8a0 => 499
	i64 6893780433488385105, ; 407: de\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x5faba0c7899d1451 => 493
	i64 6894844156784520562, ; 408: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6911517594278112275, ; 409: tr\Microsoft.CodeAnalysis.Features.resources => 0x5feaa4a219cf2c13 => 476
	i64 6916425539059316312, ; 410: de\Microsoft.CodeAnalysis.resources => 0x5ffc14620b11f658 => 415
	i64 6964286494529358928, ; 411: ku\Humanizer.resources => 0x60a61dab1c790c50 => 389
	i64 6985504089449394141, ; 412: ZXing.Net.MAUI.Controls.dll => 0x60f17ef564ab6fdd => 365
	i64 6985819478807084611, ; 413: uz-Cyrl-UZ\Humanizer.resources => 0x60f29dcdb34cfe43 => 408
	i64 7011053663211085209, ; 414: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 312
	i64 7060896174307865760, ; 415: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 416: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7089561094984850497, ; 417: pt-BR\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x62632e40f8005c41 => 487
	i64 7101497697220435230, ; 418: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 419: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 313
	i64 7105430439328552570, ; 420: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 271
	i64 7112547816752919026, ; 421: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7113371626429202782, ; 422: bg\Humanizer.resources.dll => 0x62b7c5ce54a7c15e => 369
	i64 7148515934569711863, ; 423: NuGet.Packaging.dll => 0x6334a15e373f48f7 => 248
	i64 7188876148444261747, ; 424: System.Composition.AttributedModel.dll => 0x63c404c4ca4c6d73 => 258
	i64 7192745174564810625, ; 425: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 278
	i64 7212896777207732725, ; 426: fa\Humanizer.resources.dll => 0x64195b673f06d9f5 => 376
	i64 7219616639871433054, ; 427: ja\Microsoft.CodeAnalysis.CSharp.resources => 0x64313b153209395e => 432
	i64 7270811800166795866, ; 428: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 429: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7304135784225337694, ; 430: fi-FI\Humanizer.resources => 0x655d80cbf9f8715e => 377
	i64 7314237870106916923, ; 431: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 256
	i64 7316205155833392065, ; 432: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 433: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 434: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 268
	i64 7349431895026339542, ; 435: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 277
	i64 7377312882064240630, ; 436: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7398281968956400768, ; 437: pl\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x66abfa40c3d2e480 => 447
	i64 7488575175965059935, ; 438: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 439: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 440: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 266
	i64 7507915030481126195, ; 441: zh-Hant\Microsoft.CodeAnalysis.Features.resources.dll => 0x683178f10ba4c333 => 478
	i64 7579876713893044336, ; 442: de\Microsoft.CodeAnalysis.Features.resources => 0x693121b61cd9a070 => 467
	i64 7592577537120840276, ; 443: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 444: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 445: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7659175115073460922, ; 446: de\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x6a4adb2fe6771aba => 441
	i64 7694110031107265897, ; 447: ru\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6ac6f84ee2eb1569 => 449
	i64 7694700312542370399, ; 448: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 449: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7723873813026311384, ; 450: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 255
	i64 7725404731275645577, ; 451: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 321
	i64 7735176074855944702, ; 452: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 453: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 357
	i64 7742555799473854801, ; 454: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 519
	i64 7756332380610150586, ; 455: Xamarin.Google.AutoValue.Annotations => 0x6ba407349220c0ba => 351
	i64 7791074099216502080, ; 456: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7800262899020527687, ; 457: pt\Humanizer.resources => 0x6c4019c772c6f847 => 397
	i64 7820441508502274321, ; 458: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 459: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 285
	i64 7874680181924468550, ; 460: Microsoft.CodeAnalysis.Elfie => 0x6d487be7536a9746 => 191
	i64 7877653024023762272, ; 461: Microsoft.CodeAnalysis.CSharp.Features => 0x6d530bb010b7d560 => 189
	i64 7882403529043535425, ; 462: fa\Humanizer.resources => 0x6d63ec3f34ece641 => 376
	i64 7927939710195668715, ; 463: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 254
	i64 7929771293765145963, ; 464: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x6e0c34fa5af6156b => 460
	i64 7940487153141724357, ; 465: es\Microsoft.CodeAnalysis.Features.resources => 0x6e3246feca90b4c5 => 468
	i64 7972383140441761405, ; 466: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 203
	i64 7975724199463739455, ; 467: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 530
	i64 8004654074791351515, ; 468: ko\Microsoft.CodeAnalysis.Workspaces.resources => 0x6f163e7875d254db => 498
	i64 8025517457475554965, ; 469: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 470: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8032882159747084140, ; 471: pl\Microsoft.CodeAnalysis.Features.resources => 0x6f7a87c3a64c2f6c => 473
	i64 8045853768902652843, ; 472: pt-BR\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x6fa89d5fc22e33ab => 435
	i64 8064050204834738623, ; 473: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 474: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 315
	i64 8085230611270010360, ; 475: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 476: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 477: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 478: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 521
	i64 8113615946733131500, ; 479: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8129655575090457984, ; 480: de\Microsoft.CodeAnalysis.Workspaces.resources => 0x70d256ac3b8a6d80 => 493
	i64 8148667116939980602, ; 481: pt-BR\Microsoft.CodeAnalysis.resources.dll => 0x7115e191c21d2f3a => 422
	i64 8167236081217502503, ; 482: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 483: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 484: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 361
	i64 8198475655723014119, ; 485: Microsoft.CodeAnalysis.CSharp.Features.dll => 0x71c6d62be70ed7e7 => 189
	i64 8234211087038226247, ; 486: de\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x7245cb5b607f1f47 => 428
	i64 8234598844743906698, ; 487: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 218
	i64 8246048515196606205, ; 488: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 230
	i64 8246804492189889837, ; 489: Microsoft.VisualStudio.Web.CodeGeneration => 0x727288fe0112f52d => 233
	i64 8264926008854159966, ; 490: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 491: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 492: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8320777595162576093, ; 493: Xamarin.AndroidX.Camera.View => 0x737957232eb1c4dd => 292
	i64 8327329536391025244, ; 494: bn-BD\Humanizer.resources.dll => 0x73909e17e034925c => 370
	i64 8361426872303202087, ; 495: fr\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x7409c1708b09af27 => 482
	i64 8368701292315763008, ; 496: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 497: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 536
	i64 8398329775253868912, ; 498: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 298
	i64 8400357532724379117, ; 499: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 330
	i64 8410671156615598628, ; 500: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 501: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 319
	i64 8442828414178614895, ; 502: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0x752af3b5eeb0de6f => 180
	i64 8453144032365170736, ; 503: Microsoft.Extensions.Identity.Stores.dll => 0x754f99b5f456d030 => 211
	i64 8476857680833348370, ; 504: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 273
	i64 8490820071440741817, ; 505: NuGet.Packaging => 0x75d573de61fb75b9 => 248
	i64 8513291706828295435, ; 506: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 232
	i64 8518412311883997971, ; 507: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 508: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8564067269325865571, ; 509: tr\Humanizer.resources => 0x76d9adce9cb7c263 => 406
	i64 8598790081731763592, ; 510: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 309
	i64 8601935802264776013, ; 511: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 342
	i64 8622798162740718334, ; 512: vi\Humanizer.resources.dll => 0x77aa553e540d2afe => 410
	i64 8623059219396073920, ; 513: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 514: Java.Interop => 0x77b654e585b55834 => 168
	i64 8629545377263870989, ; 515: Xamarin.AndroidX.Camera.Core.dll => 0x77c24dcca0ed640d => 290
	i64 8638972117149407195, ; 516: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 517: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 329
	i64 8648495978913578441, ; 518: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 519: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 526
	i64 8684531736582871431, ; 520: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8691348873255390601, ; 521: el\Humanizer.resources.dll => 0x789ddfc061610d89 => 374
	i64 8725526185868997716, ; 522: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8747977504141423047, ; 523: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources => 0x79670f30f57531c7 => 438
	i64 8769779827360249665, ; 524: ko\Microsoft.CodeAnalysis.Features.resources.dll => 0x79b48449e831b741 => 472
	i64 8784689560710160013, ; 525: zh-Hant\Microsoft.CodeAnalysis.Workspaces.resources => 0x79e97c9cb8361e8d => 504
	i64 8853378295825400934, ; 526: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 358
	i64 8855637769374638964, ; 527: cs\Humanizer.resources.dll => 0x7ae58ba1cf1ba374 => 371
	i64 8918797492400444619, ; 528: dotnet-aspnet-codegenerator-design.dll => 0x7bc5ef10c62c54cb => 235
	i64 8932705878791833663, ; 529: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources => 0x7bf758ab546e483f => 500
	i64 8941376889969657626, ; 530: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 531: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 332
	i64 8954753533646919997, ; 532: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 533: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 217
	i64 8988527500359839366, ; 534: Mono.TextTemplating => 0x7cbdaa2368c72e86 => 241
	i64 9016366737383770868, ; 535: az\Humanizer.resources.dll => 0x7d2091c6e2684af4 => 368
	i64 9045785047181495996, ; 536: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 536
	i64 9052662452269567435, ; 537: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 222
	i64 9111603110219107042, ; 538: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 204
	i64 9131857290992441898, ; 539: Xamarin.AndroidX.Camera.Core => 0x7ebadfd2d12a5a2a => 290
	i64 9138683372487561558, ; 540: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 541: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 199
	i64 9258038534689720297, ; 542: Microsoft.CodeAnalysis.Workspaces => 0x807b28ff010f07e9 => 195
	i64 9259143645429201038, ; 543: zh-CN\Humanizer.resources => 0x807f1616a61f788e => 411
	i64 9271551713462316287, ; 544: QRCoder.dll => 0x80ab2b291d95ecff => 252
	i64 9287191586081212215, ; 545: ru\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x80e2bb8ab95e0737 => 436
	i64 9312692141327339315, ; 546: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 347
	i64 9320828767200221179, ; 547: ko-KR\Humanizer.resources => 0x815a3c61413617fb => 388
	i64 9324707631942237306, ; 548: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 284
	i64 9363564275759486853, ; 549: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 510
	i64 9411968111718438806, ; 550: cs\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x829e072180481796 => 479
	i64 9427266486299436557, ; 551: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 221
	i64 9441911982924282715, ; 552: ms-MY\Humanizer.resources => 0x830868ec4eb4bb5b => 391
	i64 9467211876562491619, ; 553: zh-Hant\Microsoft.CodeAnalysis.resources.dll => 0x83624b0ad3ddd8e3 => 426
	i64 9468215723722196442, ; 554: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9500688326720985260, ; 555: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 202
	i64 9508211702228543126, ; 556: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x83f3f42aa08b6696 => 180
	i64 9551379474083066910, ; 557: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 534
	i64 9554839972845591462, ; 558: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 559: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 353
	i64 9584643793929893533, ; 560: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9606216591333276305, ; 561: es\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x8550231809e23a91 => 429
	i64 9659729154652888475, ; 562: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 563: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 564: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 565: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 299
	i64 9682672435579207921, ; 566: sv\Humanizer.resources => 0x865fc347772a40f1 => 404
	i64 9702891218465930390, ; 567: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9773637193738963987, ; 568: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 506
	i64 9776521250654317172, ; 569: tr\Microsoft.CodeAnalysis.Scripting.resources => 0x87ad2e477c4eea74 => 489
	i64 9780093022148426479, ; 570: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 349
	i64 9808614125178078768, ; 571: es\Microsoft.CodeAnalysis.Features.resources.dll => 0x881f32941e1e4630 => 468
	i64 9808709177481450983, ; 572: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9815966120248698980, ; 573: it\Microsoft.CodeAnalysis.resources => 0x8839512ddcb16864 => 418
	i64 9819168441846169364, ; 574: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 222
	i64 9825649861376906464, ; 575: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 296
	i64 9834056768316610435, ; 576: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 577: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864374015518639636, ; 578: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 179
	i64 9865124420436172353, ; 579: cs\Microsoft.CodeAnalysis.Scripting.resources => 0x88e7f66489211e41 => 479
	i64 9907349773706910547, ; 580: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 309
	i64 9933555792566666578, ; 581: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9954767608854229140, ; 582: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x8a267065cb523094 => 460
	i64 9956195530459977388, ; 583: Microsoft.Maui => 0x8a2b8315b36616ac => 228
	i64 9956796922710453736, ; 584: fr\Microsoft.CodeAnalysis.Features.resources => 0x8a2da60c3edbede8 => 469
	i64 9959489431142554298, ; 585: System.CodeDom => 0x8a3736deb7825aba => 257
	i64 9974604633896246661, ; 586: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10017511394021241210, ; 587: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 214
	i64 10038780035334861115, ; 588: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10049750028500509718, ; 589: cs\Microsoft.CodeAnalysis.Workspaces.resources => 0x8b77e267b23ea416 => 492
	i64 10051358222726253779, ; 590: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 591: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 592: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 593: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 226
	i64 10105485790837105934, ; 594: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10118064984325276963, ; 595: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x8c6a967ed506c523 => 461
	i64 10137402534451296909, ; 596: nb\Humanizer.resources => 0x8caf49e5131d3a8d => 393
	i64 10143853363526200146, ; 597: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 508
	i64 10209869394718195525, ; 598: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 524
	i64 10226222362177979215, ; 599: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 359
	i64 10229024438826829339, ; 600: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 303
	i64 10236703004850800690, ; 601: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 602: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 603: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 356
	i64 10347389959537838075, ; 604: ru\Microsoft.CodeAnalysis.resources => 0x8f9950586ab247fb => 423
	i64 10356409254419335618, ; 605: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x8fb95b58a63b89c2 => 462
	i64 10360651442923773544, ; 606: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 607: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 608: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 341
	i64 10389735884413426201, ; 609: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x902fc1bd5c975a19 => 456
	i64 10406448008575299332, ; 610: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 362
	i64 10426284384445314437, ; 611: es\Microsoft.CodeAnalysis.resources => 0x90b19a682610b585 => 416
	i64 10430153318873392755, ; 612: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 300
	i64 10447083246144586668, ; 613: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 183
	i64 10448061532586656644, ; 614: System.Composition.Convention.dll => 0x90fef89b91404384 => 259
	i64 10482770130019698767, ; 615: Microsoft.CodeAnalysis.Elfie.dll => 0x917a47e4a5e6484f => 191
	i64 10503238815856555353, ; 616: ko\Microsoft.CodeAnalysis.resources => 0x91c3000df2397559 => 420
	i64 10506226065143327199, ; 617: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 506
	i64 10546663366131771576, ; 618: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 619: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10594543503677136954, ; 620: it\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9307612f2e19203a => 431
	i64 10595762989148858956, ; 621: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 622: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10683527105087224481, ; 623: ja\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x9443834c5efb3aa1 => 445
	i64 10693597305048523572, ; 624: NuGet.ProjectModel.dll => 0x94674a17827de334 => 249
	i64 10714184849103829812, ; 625: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10735666205189739615, ; 626: zh-Hant\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x94fcbf889b80145f => 504
	i64 10750266327252719373, ; 627: ru\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x95309e446cbdd70d => 501
	i64 10761706286639228993, ; 628: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 538
	i64 10764062273958828890, ; 629: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x9561a19b937fdb5a => 457
	i64 10785150219063592792, ; 630: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10792377569642280590, ; 631: ko\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x95c63a38186bf68e => 433
	i64 10811915265162633087, ; 632: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 201
	i64 10822644899632537592, ; 633: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 634: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10831054960469279823, ; 635: da\Humanizer.resources.dll => 0x964fa319e581044f => 372
	i64 10839431236348706757, ; 636: Microsoft.VisualStudio.Web.CodeGeneration.Core => 0x966d654799d67fc5 => 234
	i64 10847732767863316357, ; 637: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 286
	i64 10881928253345575956, ; 638: de\Microsoft.CodeAnalysis.Scripting.resources => 0x970460176bf33414 => 480
	i64 10889380495983713167, ; 639: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 196
	i64 10899834349646441345, ; 640: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 641: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 642: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10972388274974066310, ; 643: Microsoft.AspNetCore.Razor.Language => 0x9845c1007b7d8686 => 182
	i64 10983330919203878381, ; 644: fr\Humanizer.resources.dll => 0x986ca14761b635ed => 378
	i64 10984851517705895286, ; 645: cs\Microsoft.CodeAnalysis.Features.resources.dll => 0x987208414f453d76 => 466
	i64 11002576679268595294, ; 646: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 213
	i64 11009005086950030778, ; 647: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 228
	i64 11019817191295005410, ; 648: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 283
	i64 11023048688141570732, ; 649: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 650: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11047101296015504039, ; 651: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 240
	i64 11067960147806077617, ; 652: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources => 0x99994b1d262942b1 => 491
	i64 11071824625609515081, ; 653: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 354
	i64 11103970607964515343, ; 654: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 517
	i64 11136029745144976707, ; 655: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 352
	i64 11147920560916108509, ; 656: ja\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x9ab55eaf99ad94dd => 497
	i64 11156122287428000958, ; 657: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 532
	i64 11157797727133427779, ; 658: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 513
	i64 11162124722117608902, ; 659: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 346
	i64 11188319605227840848, ; 660: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 661: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 520
	i64 11226290749488709958, ; 662: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 215
	i64 11235648312900863002, ; 663: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11283982282067550951, ; 664: zh-Hant\Humanizer.resources.dll => 0x9c98c219b67022e7 => 413
	i64 11310472084498560282, ; 665: it\Microsoft.CodeAnalysis.resources.dll => 0x9cf6de6f7682351a => 418
	i64 11322957309738927550, ; 666: mt\Humanizer.resources => 0x9d2339ae7de6c5be => 392
	i64 11329751333533450475, ; 667: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 668: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 302
	i64 11341245327015630248, ; 669: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 263
	i64 11347436699239206956, ; 670: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11360002426691694192, ; 671: cs\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9da6d604ea88ae70 => 427
	i64 11392833485892708388, ; 672: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 331
	i64 11432101114902388181, ; 673: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11443192662959930495, ; 674: es\Humanizer.resources.dll => 0x9ece63192c153c7f => 375
	i64 11446671985764974897, ; 675: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 676: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 677: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11506022881355894879, ; 678: it\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x9fad9ad95cbc105f => 483
	i64 11508496261504176197, ; 679: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 312
	i64 11513602507638267977, ; 680: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 267
	i64 11517440453979132662, ; 681: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 219
	i64 11518296021396496455, ; 682: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 518
	i64 11527137748606195310, ; 683: Mono.TextTemplating.dll => 0x9ff89eb57eab166e => 241
	i64 11529969570048099689, ; 684: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 346
	i64 11530120875411095857, ; 685: th-TH\Humanizer.resources.dll => 0xa00337d8d431c131 => 405
	i64 11530571088791430846, ; 686: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 212
	i64 11564861549255168062, ; 687: Microsoft.CodeAnalysis.dll => 0xa07ea44e47ed903e => 187
	i64 11580057168383206117, ; 688: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 281
	i64 11591352189662810718, ; 689: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 339
	i64 11597308262950669618, ; 690: Microsoft.Extensions.Identity.Core.dll => 0xa0f1ea6b83e08d32 => 210
	i64 11597940890313164233, ; 691: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11622657603305904499, ; 692: Microsoft.Extensions.Identity.Stores => 0xa14bf982bf0a9973 => 211
	i64 11672361001936329215, ; 693: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 313
	i64 11674412572205198830, ; 694: it\Microsoft.CodeAnalysis.Scripting.resources => 0xa203d86177a52dee => 483
	i64 11691353810037938030, ; 695: pl\Microsoft.CodeAnalysis.resources => 0xa2400858c6b8976e => 421
	i64 11692977985522001935, ; 696: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 697: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11733105267584923319, ; 698: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xa2d45d1382a9f6b7 => 451
	i64 11743665907891708234, ; 699: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11775736028400734260, ; 700: tr\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xa36bd186fd985034 => 489
	i64 11814896823651168648, ; 701: ro\Humanizer.resources.dll => 0xa3f6f210279e7188 => 398
	i64 11851835839753101194, ; 702: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 0xa47a2de70cba1f8a => 190
	i64 11855031688536399763, ; 703: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 535
	i64 11918619261036226777, ; 704: cs\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa5677112033168d9 => 492
	i64 11991047634523762324, ; 705: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 706: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 272
	i64 12040886584167504988, ; 707: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 708: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 709: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 710: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 711: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12123554842037000992, ; 712: tr\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa83f84e53e951b20 => 502
	i64 12131140937409964993, ; 713: ru\Microsoft.CodeAnalysis.Features.resources => 0xa85a7868b6852bc1 => 475
	i64 12137774235383566651, ; 714: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 343
	i64 12145679461940342714, ; 715: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 716: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 275
	i64 12198439281774268251, ; 717: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 223
	i64 12201331334810686224, ; 718: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 719: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 720: System.IO.Pipelines => 0xaae1de2e1c17f00a => 267
	i64 12332222936682028543, ; 721: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 722: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12405905830338390985, ; 723: ja\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xac2aa19f96446bc9 => 445
	i64 12439275739440478309, ; 724: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 220
	i64 12451044538927396471, ; 725: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 311
	i64 12466513435562512481, ; 726: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 325
	i64 12475113361194491050, ; 727: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 539
	i64 12487638416075308985, ; 728: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 305
	i64 12493213219680520345, ; 729: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 196
	i64 12517810545449516888, ; 730: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 731: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 293
	i64 12550732019250633519, ; 732: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12619191878741427339, ; 733: de\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xaf20602784e0848b => 454
	i64 12690486463116955105, ; 734: NuGet.Configuration.dll => 0xb01daa337cfd4de1 => 244
	i64 12699999919562409296, ; 735: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 736: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 294
	i64 12708238894395270091, ; 737: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 738: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 739: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12726057104018228727, ; 740: Microsoft.NET.StringTools => 0xb09c0982b457c5f7 => 231
	i64 12742166704152928552, ; 741: Microsoft.CodeAnalysis.Razor.dll => 0xb0d5451b45d86128 => 193
	i64 12753841065332862057, ; 742: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 348
	i64 12760970142902902754, ; 743: Xamarin.AndroidX.Camera.Lifecycle.dll => 0xb11812bc0517dfe2 => 291
	i64 12822330414412999099, ; 744: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources => 0xb1f2119387c629bb => 439
	i64 12828192437253469131, ; 745: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 360
	i64 12835242264250840079, ; 746: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12835543923467107475, ; 747: pt-BR\Microsoft.CodeAnalysis.resources => 0xb2210331592e3c93 => 422
	i64 12843321153144804894, ; 748: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 216
	i64 12843770487262409629, ; 749: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 750: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12860889322320594667, ; 751: dotnet-aspnet-codegenerator-design => 0xb27b0eb2e08886eb => 235
	i64 12963446364377008305, ; 752: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 265
	i64 12982280885948128408, ; 753: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 304
	i64 12989346753972519995, ; 754: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 505
	i64 12991459499837607210, ; 755: Microsoft.CodeAnalysis => 0xb44aef9559b1cd2a => 187
	i64 13005833372463390146, ; 756: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 526
	i64 13068258254871114833, ; 757: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13126023683090012938, ; 758: System.Composition.TypedParts.dll => 0xb62900febff1db0a => 262
	i64 13129914918964716986, ; 759: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 308
	i64 13161648197185303412, ; 760: ru\Microsoft.CodeAnalysis.Workspaces.resources => 0xb6a7914d4be3f374 => 501
	i64 13162471042547327635, ; 761: System.Security.Permissions => 0xb6aa7dace9662293 => 273
	i64 13166897321255124987, ; 762: ko\Microsoft.CodeAnalysis.CSharp.resources => 0xb6ba375a3b743ffb => 433
	i64 13173818576982874404, ; 763: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13184895541093799161, ; 764: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb6fa28a3578714f9 => 491
	i64 13191147902838114738, ; 765: it\Microsoft.CodeAnalysis.Features.resources.dll => 0xb7105f20c04e09b2 => 470
	i64 13204198774430501167, ; 766: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb73ebcd39594092f => 439
	i64 13219588054769624370, ; 767: es\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xb775694ba18a6532 => 442
	i64 13233222243778831259, ; 768: es\Microsoft.CodeAnalysis.Scripting.resources => 0xb7a5d984a23c239b => 481
	i64 13247471366635968436, ; 769: de\Microsoft.CodeAnalysis.resources.dll => 0xb7d87905147ed7b4 => 415
	i64 13252883958002779332, ; 770: NuGet.Common.dll => 0xb7ebb3be363a84c4 => 243
	i64 13257048157060802935, ; 771: Microsoft.Build.Framework => 0xb7fa7f0f5bdb2977 => 185
	i64 13262938754463820554, ; 772: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources => 0xb80f6c86f193eb0a => 503
	i64 13286676513096225245, ; 773: hu\Humanizer.resources.dll => 0xb863c1e490a051dd => 382
	i64 13292381562582072947, ; 774: pt-BR\Microsoft.CodeAnalysis.Features.resources.dll => 0xb878069ae8a7fe73 => 474
	i64 13310773016837059531, ; 775: cs\Microsoft.CodeAnalysis.resources.dll => 0xb8b95d890a6d73cb => 414
	i64 13313727712277001502, ; 776: ja\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb8c3dcd0ae8b751e => 484
	i64 13343850469010654401, ; 777: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 778: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 779: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 514
	i64 13401370062847626945, ; 780: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 343
	i64 13403416310143541304, ; 781: Microcharts.Droid => 0xba02801ea6c86038 => 177
	i64 13404347523447273790, ; 782: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 298
	i64 13431476299110033919, ; 783: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 784: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 355
	i64 13463706743370286408, ; 785: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 786: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 357
	i64 13491513212026656886, ; 787: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 287
	i64 13502641473732064860, ; 788: System.Composition.AttributedModel => 0xbb6304e15b41b65c => 258
	i64 13540124433173649601, ; 789: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 535
	i64 13553170703867477024, ; 790: Microsoft.CodeAnalysis.Scripting.dll => 0xbc1688f288407c20 => 194
	i64 13572454107664307259, ; 791: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 333
	i64 13577726035533356841, ; 792: sl\Humanizer.resources => 0xbc6dc5e43589df29 => 401
	i64 13578472628727169633, ; 793: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 794: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 795: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 304
	i64 13647894001087880694, ; 796: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 797: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 280
	i64 13702626353344114072, ; 798: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 799: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 800: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 801: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13730336804810551062, ; 802: el\Humanizer.resources => 0xbe8bf493d9346f16 => 374
	i64 13740961536386145404, ; 803: ru\Microsoft.CodeAnalysis.Features.resources.dll => 0xbeb1b3b6f09a1c7c => 475
	i64 13741908991377327229, ; 804: de\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xbeb5116b7ecac47d => 480
	i64 13742054908850494594, ; 805: Azure.Identity => 0xbeb596218df25c82 => 174
	i64 13751991022888427085, ; 806: pl\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xbed8e2f961a01e4d => 499
	i64 13754352728446157994, ; 807: ko\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xbee146eece7544aa => 498
	i64 13768883594457632599, ; 808: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13827721973044326179, ; 809: cs\Microsoft.CodeAnalysis.Features.resources => 0xbfe5efdf402baf23 => 466
	i64 13828521679616088467, ; 810: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 358
	i64 13864745339496195545, ; 811: Microsoft.CodeAnalysis.Workspaces.dll => 0xc069786d7dec65d9 => 195
	i64 13881769479078963060, ; 812: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 813: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 274
	i64 13911222732217019342, ; 814: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 815: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13939962644205322370, ; 816: Microsoft.AspNetCore.Razor.Language.dll => 0xc174b22af612c082 => 182
	i64 13955418299340266673, ; 817: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 209
	i64 13957763705375634936, ; 818: ru\Microsoft.CodeAnalysis.Scripting.resources => 0xc1b3f0237dc135f8 => 488
	i64 13959074834287824816, ; 819: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 311
	i64 14032333893230075068, ; 820: zh-Hant\Microsoft.CodeAnalysis.Features.resources => 0xc2bcdd5453a71cbc => 478
	i64 14075334701871371868, ; 821: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14084551984877988794, ; 822: nb-NO\Humanizer.resources => 0xc3766168372cebba => 394
	i64 14102632621176723282, ; 823: Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll => 0xc3b69da667131752 => 237
	i64 14108485179889227694, ; 824: sk\Humanizer.resources.dll => 0xc3cb68856a2917ae => 400
	i64 14124974489674258913, ; 825: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 293
	i64 14125464355221830302, ; 826: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 827: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 199
	i64 14147751692859242126, ; 828: ru\Humanizer.resources => 0xc456e934e74e768e => 399
	i64 14177026328031998476, ; 829: sk\Humanizer.resources => 0xc4beea550db5320c => 400
	i64 14178052285788134900, ; 830: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 276
	i64 14212104595480609394, ; 831: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 832: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 833: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 834: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 835: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14258050503687732042, ; 836: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xc5dec56405e2fb4a => 465
	i64 14261073672896646636, ; 837: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 331
	i64 14293202716295135330, ; 838: it\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xc65ba8244f6b8062 => 444
	i64 14298246716367104064, ; 839: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14316535876961222820, ; 840: Xamarin.AndroidX.Camera.Camera2 => 0xc6ae8d872068c0a4 => 289
	i64 14327695147300244862, ; 841: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 842: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 843: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 277
	i64 14336022690333166993, ; 844: ko-KR\Humanizer.resources.dll => 0xc6f3c8ae6d3f8d91 => 388
	i64 14346402571976470310, ; 845: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 846: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 528
	i64 14388314743592357201, ; 847: he\Humanizer.resources.dll => 0xc7ad9006d8568d51 => 380
	i64 14461014870687870182, ; 848: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14461643095315121028, ; 849: it\Humanizer.resources => 0xc8b213c62cbd0384 => 386
	i64 14464374589798375073, ; 850: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 529
	i64 14486659737292545672, ; 851: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 316
	i64 14491877563792607819, ; 852: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 537
	i64 14495724990987328804, ; 853: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 334
	i64 14551742072151931844, ; 854: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14552901170081803662, ; 855: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 256
	i64 14558829797982847683, ; 856: pl\Microsoft.CodeAnalysis.resources.dll => 0xca0b5a90b623c2c3 => 421
	i64 14561513370130550166, ; 857: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14571600089685354543, ; 858: ja\Microsoft.CodeAnalysis.Features.resources.dll => 0xca38b913f2bee82f => 471
	i64 14574160591280636898, ; 859: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14603685918205544701, ; 860: es\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xcaaab6f80e0408fd => 494
	i64 14610046442689856844, ; 861: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 507
	i64 14622043554576106986, ; 862: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 863: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 326
	i64 14648804764802849406, ; 864: Azure.Identity.dll => 0xcb4b0252261f9a7e => 174
	i64 14669215534098758659, ; 865: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 207
	i64 14687496268954629644, ; 866: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xcbd47809f6ea760c => 463
	i64 14690985099581930927, ; 867: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 868: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 521
	i64 14715764521194861350, ; 869: fr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xcc38e5dd541db326 => 443
	i64 14734270797510799600, ; 870: ru\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xcc7aa5398e0af0f0 => 449
	i64 14735017007120366644, ; 871: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 520
	i64 14744092281598614090, ; 872: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 537
	i64 14792063746108907174, ; 873: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 355
	i64 14832630590065248058, ; 874: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 875: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 302
	i64 14889905118082851278, ; 876: GoogleGson.dll => 0xcea391d0969961ce => 175
	i64 14904040806490515477, ; 877: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 505
	i64 14912225920358050525, ; 878: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 879: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 880: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 208
	i64 14971762707707811983, ; 881: lv\Humanizer.resources.dll => 0xcfc662dbde5d588f => 390
	i64 14971923049666773358, ; 882: it\Microsoft.CodeAnalysis.Features.resources => 0xcfc6f4b063df016e => 470
	i64 14973015887391301737, ; 883: fr\Microsoft.CodeAnalysis.Scripting.resources => 0xcfcad69e803d2069 => 482
	i64 14984936317414011727, ; 884: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 885: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 886: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 305
	i64 15015154896917945444, ; 887: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 888: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 889: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 890: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 891: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 522
	i64 15115185479366240210, ; 892: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 893: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 894: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 219
	i64 15150743910298169673, ; 895: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 332
	i64 15195733091524337868, ; 896: ja\Microsoft.CodeAnalysis.resources => 0xd2e216bc7df4e0cc => 419
	i64 15203009853192377507, ; 897: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 527
	i64 15227001540531775957, ; 898: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 206
	i64 15234459843334988256, ; 899: ru\Humanizer.resources.dll => 0xd36bac830aef61e0 => 399
	i64 15234786388537674379, ; 900: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15240486395757881428, ; 901: ja\Humanizer.resources => 0xd38115a11f526854 => 387
	i64 15250465174479574862, ; 902: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 903: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 295
	i64 15279429628684179188, ; 904: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 361
	i64 15299439993936780255, ; 905: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15300862763834473199, ; 906: System.Composition.Hosting.dll => 0xd457959dc35afaef => 260
	i64 15338463749992804988, ; 907: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15352427450275134006, ; 908: System.Composition.Runtime.dll => 0xd50ec76ce59afa36 => 261
	i64 15370334346939861994, ; 909: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 300
	i64 15383240894167415497, ; 910: System.Memory.Data => 0xd57c4016df1c7ac9 => 268
	i64 15391712275433856905, ; 911: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 208
	i64 15471025662701294488, ; 912: Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll => 0xd6b41fdf08435398 => 238
	i64 15475196252089753159, ; 913: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 264
	i64 15526743539506359484, ; 914: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 915: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 916: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 917: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 509
	i64 15541854775306130054, ; 918: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 919: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 920: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 324
	i64 15609085926864131306, ; 921: System.dll => 0xd89e9cf3334914ea => 164
	i64 15620595871140898079, ; 922: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 209
	i64 15661133872274321916, ; 923: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 924: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15750144475371186037, ; 925: Xamarin.AndroidX.Camera.View.dll => 0xda93c0f3d794a775 => 292
	i64 15755368083429170162, ; 926: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 927: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 338
	i64 15783653065526199428, ; 928: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 510
	i64 15817206913877585035, ; 929: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 930: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15878195890548581965, ; 931: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xdc5aaf094237264d => 464
	i64 15885744048853936810, ; 932: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 933: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 225
	i64 15934062614519587357, ; 934: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 935: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 936: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15964926172722689846, ; 937: hu\Humanizer.resources => 0xdd8ecfc4ae78f736 => 382
	i64 15971679995444160383, ; 938: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 15988046219977098995, ; 939: id\Humanizer.resources.dll => 0xdde0f3542a4306f3 => 384
	i64 16018552496348375205, ; 940: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 941: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 942: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 529
	i64 16107572299479706728, ; 943: pt\Humanizer.resources.dll => 0xdf8997aa3068ec68 => 397
	i64 16148621927384773086, ; 944: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xe01b6e1579da71de => 453
	i64 16154507427712707110, ; 945: System => 0xe03056ea4e39aa26 => 164
	i64 16185160156379463841, ; 946: sl\Humanizer.resources.dll => 0xe09d3d68d9cdc0a1 => 401
	i64 16219561732052121626, ; 947: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16270510675159710935, ; 948: ja\Microsoft.CodeAnalysis.resources.dll => 0xe1cc774113187cd7 => 419
	i64 16274182383641215830, ; 949: zxing.dll => 0xe1d982a752dac356 => 363
	i64 16287915403742224639, ; 950: it\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xe20a4cc33bab20ff => 496
	i64 16288847719894691167, ; 951: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 523
	i64 16313030114241086891, ; 952: ja\Microsoft.CodeAnalysis.Scripting.resources => 0xe2638675719705ab => 484
	i64 16315482530584035869, ; 953: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 954: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 213
	i64 16324796876805858114, ; 955: SkiaSharp.dll => 0xe28d5444586b6342 => 253
	i64 16337011941688632206, ; 956: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 957: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 310
	i64 16404675382673142372, ; 958: uz-Latn-UZ\Humanizer.resources.dll => 0xe3a91d5847d3f264 => 409
	i64 16416586957282382396, ; 959: ko\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xe3d36edbdd20923c => 485
	i64 16423015068819898779, ; 960: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 360
	i64 16454459195343277943, ; 961: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 962: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16533548349183570019, ; 963: NuGet.Common => 0xe572f6a005d53063 => 243
	i64 16558294117798643464, ; 964: uz-Latn-UZ\Humanizer.resources => 0xe5cae0c541d40708 => 409
	i64 16573490312900569789, ; 965: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xe600dda124d0eabd => 438
	i64 16582434033142728747, ; 966: Microsoft.NET.StringTools.dll => 0xe620a3e548d2082b => 231
	i64 16587349424426152616, ; 967: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xe6321a6b003372a8 => 490
	i64 16589693266713801121, ; 968: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 323
	i64 16621146507174665210, ; 969: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 297
	i64 16626488797933785693, ; 970: pt-BR\Microsoft.CodeAnalysis.Features.resources => 0xe6bd277886dad25d => 474
	i64 16643194905613199096, ; 971: System.Composition.Runtime => 0xe6f8819654aa66f8 => 261
	i64 16649148416072044166, ; 972: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 230
	i64 16677317093839702854, ; 973: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 330
	i64 16702652415771857902, ; 974: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 975: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 976: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 977: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 978: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 979: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16783012334401147854, ; 980: af\Humanizer.resources => 0xe8e93ccc44fad3ce => 366
	i64 16803648858859583026, ; 981: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 522
	i64 16817690021300390726, ; 982: fr\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xe9646ff86e3dcb46 => 443
	i64 16822611501064131242, ; 983: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 984: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 985: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16884536815023549305, ; 986: bn-BD\Humanizer.resources => 0xea51ecc6707beb79 => 370
	i64 16885326587688996227, ; 987: ZXing.Net.MAUI.dll => 0xea54bb11b7a94d83 => 364
	i64 16890310621557459193, ; 988: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16899091755757876651, ; 989: he\Humanizer.resources => 0xea85a26aa8ae35ab => 380
	i64 16933958494752847024, ; 990: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 991: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 530
	i64 16945858842201062480, ; 992: Azure.Core => 0xeb2bc8d57f4e7c50 => 173
	i64 16956605162877593346, ; 993: fr-BE\Humanizer.resources.dll => 0xeb51f68e41dfa702 => 379
	i64 16977952268158210142, ; 994: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16987813465531077541, ; 995: fi-FI\Humanizer.resources.dll => 0xebc0d6577393d3a5 => 377
	i64 16989020923549080504, ; 996: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 323
	i64 16998075588627545693, ; 997: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 328
	i64 17008137082415910100, ; 998: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 999: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 282
	i64 17031295164305207763, ; 1000: Microsoft.CodeAnalysis.Features => 0xec5b50b75d3d71d3 => 192
	i64 17031351772568316411, ; 1001: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 327
	i64 17037200463775726619, ; 1002: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 314
	i64 17039544999576254074, ; 1003: Microsoft.CodeAnalysis.AnalyzerUtilities => 0xec789fe5d206b67a => 186
	i64 17040771374769818752, ; 1004: zxing => 0xec7cfb478bcccc80 => 363
	i64 17062143951396181894, ; 1005: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17118171214553292978, ; 1006: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17137864900836977098, ; 1007: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 224
	i64 17164834558324733651, ; 1008: is\Humanizer.resources.dll => 0xee35be166d4b76d3 => 385
	i64 17187273293601214786, ; 1009: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 1010: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 218
	i64 17201328579425343169, ; 1011: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 1012: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 1013: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 525
	i64 17230721278011714856, ; 1014: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 1015: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 1016: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17306917412052548875, ; 1017: ZXing.Net.MAUI => 0xf02e85b0b66a3d0b => 364
	i64 17310278548634113468, ; 1018: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 515
	i64 17333249706306540043, ; 1019: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 1020: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 1021: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 515
	i64 17360349973592121190, ; 1022: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 353
	i64 17371436720558481852, ; 1023: System.Runtime.Caching => 0xf113bda8d710a1bc => 270
	i64 17373701575325078811, ; 1024: nl\Humanizer.resources => 0xf11bc9886ee5551b => 395
	i64 17470386307322966175, ; 1025: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 1026: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 1027: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 513
	i64 17522591619082469157, ; 1028: GoogleGson => 0xf32cc03d27a5bf25 => 175
	i64 17523946658117960076, ; 1029: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 272
	i64 17540901887276648245, ; 1030: zh-Hans\Humanizer.resources.dll => 0xf36dcd54af1a8735 => 412
	i64 17565043795550961167, ; 1031: pl\Microsoft.CodeAnalysis.Scripting.resources => 0xf3c39244b9fe7e0f => 486
	i64 17586418995763329665, ; 1032: pl\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf40f82e659a7ba81 => 434
	i64 17590473451926037903, ; 1033: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 275
	i64 17623389608345532001, ; 1034: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 525
	i64 17627500474728259406, ; 1035: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17668140706752364209, ; 1036: Microsoft.DiaSymReader => 0xf531d85ceb97feb1 => 197
	i64 17671790519499593115, ; 1037: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 254
	i64 17685921127322830888, ; 1038: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17696897804768271485, ; 1039: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xf59802ca8f9a5c7d => 464
	i64 17704177640604968747, ; 1040: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 325
	i64 17710060891934109755, ; 1041: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 322
	i64 17712670374920797664, ; 1042: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17743407583038752114, ; 1043: System.CodeDom.dll => 0xf63d3f302bff4572 => 257
	i64 17777860260071588075, ; 1044: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 1045: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 221
	i64 17798314319870884251, ; 1046: zh-Hans\Microsoft.CodeAnalysis.resources.dll => 0xf70050930ca6f99b => 425
	i64 17827813215687577648, ; 1047: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 516
	i64 17836660441126018656, ; 1048: ja\Humanizer.resources.dll => 0xf7888c2b24941e60 => 387
	i64 17838668724098252521, ; 1049: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17882545204693222992, ; 1050: tr\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf82b901e2d9ac650 => 437
	i64 17891337867145587222, ; 1051: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 356
	i64 17910264068556501837, ; 1052: Microsoft.Extensions.Identity.Core => 0xf88e0a4717c0b34d => 210
	i64 17922362651809318980, ; 1053: de\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xf8b905e004d28844 => 454
	i64 17928294245072900555, ; 1054: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 1055: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 509
	i64 17992315986609351877, ; 1056: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 17992626610390966489, ; 1057: ko\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xf9b2a692b89820d9 => 446
	i64 18017743553296241350, ; 1058: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 203
	i64 18025913125965088385, ; 1059: System.Threading => 0xfa28e87b91334681 => 148
	i64 18116111925905154859, ; 1060: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 287
	i64 18121036031235206392, ; 1061: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 327
	i64 18146411883821974900, ; 1062: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 1063: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18190621259184097416, ; 1064: cs\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xfc7211a83d564888 => 440
	i64 18203743254473369877, ; 1065: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 271
	i64 18225059387460068507, ; 1066: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 1067: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 1068: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 308
	i64 18289698835141844372, ; 1069: Microsoft.CodeAnalysis.AnalyzerUtilities.dll => 0xfdd2103005815d94 => 186
	i64 18305135509493619199, ; 1070: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 329
	i64 18318849532986632368, ; 1071: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 1072: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 519
	i64 18335459783622540540, ; 1073: ZXing.Net.MAUI.Controls => 0xfe74a3871c483cfc => 365
	i64 18338427488326303160, ; 1074: NuGet.LibraryModel => 0xfe7f2ea3b4f2bdb8 => 247
	i64 18342408478508122430, ; 1075: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 518
	i64 18358161419737137786, ; 1076: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 514
	i64 18365503706650766700, ; 1077: ar\Humanizer.resources.dll => 0xfedf60510c09ed6c => 367
	i64 18380184030268848184, ; 1078: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 345
	i64 18439108438687598470 ; 1079: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1080 x i32] [
	i32 307, ; 0
	i32 371, ; 1
	i32 369, ; 2
	i32 216, ; 3
	i32 171, ; 4
	i32 229, ; 5
	i32 456, ; 6
	i32 177, ; 7
	i32 176, ; 8
	i32 58, ; 9
	i32 294, ; 10
	i32 455, ; 11
	i32 151, ; 12
	i32 335, ; 13
	i32 247, ; 14
	i32 338, ; 15
	i32 411, ; 16
	i32 301, ; 17
	i32 423, ; 18
	i32 132, ; 19
	i32 193, ; 20
	i32 442, ; 21
	i32 56, ; 22
	i32 337, ; 23
	i32 494, ; 24
	i32 440, ; 25
	i32 249, ; 26
	i32 95, ; 27
	i32 385, ; 28
	i32 188, ; 29
	i32 320, ; 30
	i32 0, ; 31
	i32 129, ; 32
	i32 217, ; 33
	i32 265, ; 34
	i32 452, ; 35
	i32 410, ; 36
	i32 246, ; 37
	i32 239, ; 38
	i32 145, ; 39
	i32 402, ; 40
	i32 391, ; 41
	i32 295, ; 42
	i32 18, ; 43
	i32 517, ; 44
	i32 465, ; 45
	i32 306, ; 46
	i32 321, ; 47
	i32 185, ; 48
	i32 477, ; 49
	i32 232, ; 50
	i32 150, ; 51
	i32 104, ; 52
	i32 427, ; 53
	i32 95, ; 54
	i32 245, ; 55
	i32 407, ; 56
	i32 173, ; 57
	i32 350, ; 58
	i32 432, ; 59
	i32 496, ; 60
	i32 36, ; 61
	i32 202, ; 62
	i32 0, ; 63
	i32 28, ; 64
	i32 286, ; 65
	i32 237, ; 66
	i32 328, ; 67
	i32 50, ; 68
	i32 178, ; 69
	i32 115, ; 70
	i32 70, ; 71
	i32 441, ; 72
	i32 226, ; 73
	i32 351, ; 74
	i32 431, ; 75
	i32 65, ; 76
	i32 170, ; 77
	i32 145, ; 78
	i32 349, ; 79
	i32 426, ; 80
	i32 251, ; 81
	i32 444, ; 82
	i32 285, ; 83
	i32 324, ; 84
	i32 314, ; 85
	i32 179, ; 86
	i32 40, ; 87
	i32 461, ; 88
	i32 89, ; 89
	i32 81, ; 90
	i32 242, ; 91
	i32 66, ; 92
	i32 450, ; 93
	i32 62, ; 94
	i32 86, ; 95
	i32 284, ; 96
	i32 106, ; 97
	i32 511, ; 98
	i32 335, ; 99
	i32 102, ; 100
	i32 183, ; 101
	i32 35, ; 102
	i32 281, ; 103
	i32 533, ; 104
	i32 337, ; 105
	i32 227, ; 106
	i32 428, ; 107
	i32 495, ; 108
	i32 188, ; 109
	i32 119, ; 110
	i32 322, ; 111
	i32 447, ; 112
	i32 142, ; 113
	i32 141, ; 114
	i32 359, ; 115
	i32 236, ; 116
	i32 192, ; 117
	i32 53, ; 118
	i32 35, ; 119
	i32 141, ; 120
	i32 242, ; 121
	i32 289, ; 122
	i32 278, ; 123
	i32 288, ; 124
	i32 455, ; 125
	i32 200, ; 126
	i32 214, ; 127
	i32 437, ; 128
	i32 306, ; 129
	i32 269, ; 130
	i32 500, ; 131
	i32 8, ; 132
	i32 14, ; 133
	i32 334, ; 134
	i32 51, ; 135
	i32 223, ; 136
	i32 414, ; 137
	i32 317, ; 138
	i32 136, ; 139
	i32 101, ; 140
	i32 408, ; 141
	i32 198, ; 142
	i32 238, ; 143
	i32 386, ; 144
	i32 246, ; 145
	i32 299, ; 146
	i32 344, ; 147
	i32 116, ; 148
	i32 417, ; 149
	i32 279, ; 150
	i32 270, ; 151
	i32 413, ; 152
	i32 163, ; 153
	i32 532, ; 154
	i32 181, ; 155
	i32 224, ; 156
	i32 166, ; 157
	i32 67, ; 158
	i32 207, ; 159
	i32 507, ; 160
	i32 259, ; 161
	i32 80, ; 162
	i32 372, ; 163
	i32 381, ; 164
	i32 486, ; 165
	i32 101, ; 166
	i32 339, ; 167
	i32 220, ; 168
	i32 117, ; 169
	i32 262, ; 170
	i32 263, ; 171
	i32 490, ; 172
	i32 512, ; 173
	i32 352, ; 174
	i32 373, ; 175
	i32 184, ; 176
	i32 403, ; 177
	i32 452, ; 178
	i32 184, ; 179
	i32 420, ; 180
	i32 78, ; 181
	i32 350, ; 182
	i32 114, ; 183
	i32 121, ; 184
	i32 178, ; 185
	i32 48, ; 186
	i32 234, ; 187
	i32 390, ; 188
	i32 448, ; 189
	i32 412, ; 190
	i32 240, ; 191
	i32 176, ; 192
	i32 473, ; 193
	i32 424, ; 194
	i32 128, ; 195
	i32 459, ; 196
	i32 315, ; 197
	i32 378, ; 198
	i32 368, ; 199
	i32 282, ; 200
	i32 82, ; 201
	i32 110, ; 202
	i32 75, ; 203
	i32 362, ; 204
	i32 236, ; 205
	i32 266, ; 206
	i32 255, ; 207
	i32 229, ; 208
	i32 53, ; 209
	i32 245, ; 210
	i32 341, ; 211
	i32 205, ; 212
	i32 69, ; 213
	i32 381, ; 214
	i32 366, ; 215
	i32 340, ; 216
	i32 204, ; 217
	i32 83, ; 218
	i32 172, ; 219
	i32 527, ; 220
	i32 116, ; 221
	i32 375, ; 222
	i32 406, ; 223
	i32 206, ; 224
	i32 156, ; 225
	i32 205, ; 226
	i32 276, ; 227
	i32 167, ; 228
	i32 333, ; 229
	i32 307, ; 230
	i32 383, ; 231
	i32 392, ; 232
	i32 477, ; 233
	i32 212, ; 234
	i32 32, ; 235
	i32 227, ; 236
	i32 122, ; 237
	i32 72, ; 238
	i32 62, ; 239
	i32 260, ; 240
	i32 161, ; 241
	i32 113, ; 242
	i32 383, ; 243
	i32 194, ; 244
	i32 508, ; 245
	i32 88, ; 246
	i32 225, ; 247
	i32 396, ; 248
	i32 538, ; 249
	i32 481, ; 250
	i32 105, ; 251
	i32 18, ; 252
	i32 487, ; 253
	i32 146, ; 254
	i32 118, ; 255
	i32 58, ; 256
	i32 301, ; 257
	i32 451, ; 258
	i32 17, ; 259
	i32 52, ; 260
	i32 395, ; 261
	i32 416, ; 262
	i32 92, ; 263
	i32 488, ; 264
	i32 264, ; 265
	i32 198, ; 266
	i32 533, ; 267
	i32 453, ; 268
	i32 55, ; 269
	i32 476, ; 270
	i32 129, ; 271
	i32 404, ; 272
	i32 152, ; 273
	i32 41, ; 274
	i32 379, ; 275
	i32 201, ; 276
	i32 92, ; 277
	i32 450, ; 278
	i32 252, ; 279
	i32 200, ; 280
	i32 417, ; 281
	i32 345, ; 282
	i32 269, ; 283
	i32 402, ; 284
	i32 181, ; 285
	i32 50, ; 286
	i32 162, ; 287
	i32 291, ; 288
	i32 495, ; 289
	i32 13, ; 290
	i32 319, ; 291
	i32 373, ; 292
	i32 462, ; 293
	i32 279, ; 294
	i32 340, ; 295
	i32 36, ; 296
	i32 67, ; 297
	i32 403, ; 298
	i32 398, ; 299
	i32 233, ; 300
	i32 109, ; 301
	i32 523, ; 302
	i32 531, ; 303
	i32 280, ; 304
	i32 448, ; 305
	i32 99, ; 306
	i32 425, ; 307
	i32 99, ; 308
	i32 497, ; 309
	i32 11, ; 310
	i32 436, ; 311
	i32 396, ; 312
	i32 11, ; 313
	i32 326, ; 314
	i32 25, ; 315
	i32 128, ; 316
	i32 76, ; 317
	i32 318, ; 318
	i32 109, ; 319
	i32 472, ; 320
	i32 469, ; 321
	i32 344, ; 322
	i32 342, ; 323
	i32 106, ; 324
	i32 2, ; 325
	i32 405, ; 326
	i32 26, ; 327
	i32 297, ; 328
	i32 157, ; 329
	i32 531, ; 330
	i32 250, ; 331
	i32 274, ; 332
	i32 21, ; 333
	i32 534, ; 334
	i32 49, ; 335
	i32 467, ; 336
	i32 43, ; 337
	i32 126, ; 338
	i32 283, ; 339
	i32 430, ; 340
	i32 59, ; 341
	i32 119, ; 342
	i32 389, ; 343
	i32 347, ; 344
	i32 434, ; 345
	i32 244, ; 346
	i32 310, ; 347
	i32 296, ; 348
	i32 3, ; 349
	i32 239, ; 350
	i32 316, ; 351
	i32 336, ; 352
	i32 38, ; 353
	i32 435, ; 354
	i32 124, ; 355
	i32 197, ; 356
	i32 485, ; 357
	i32 446, ; 358
	i32 458, ; 359
	i32 463, ; 360
	i32 336, ; 361
	i32 528, ; 362
	i32 137, ; 363
	i32 149, ; 364
	i32 85, ; 365
	i32 90, ; 366
	i32 511, ; 367
	i32 320, ; 368
	i32 539, ; 369
	i32 250, ; 370
	i32 429, ; 371
	i32 458, ; 372
	i32 317, ; 373
	i32 459, ; 374
	i32 430, ; 375
	i32 512, ; 376
	i32 516, ; 377
	i32 384, ; 378
	i32 288, ; 379
	i32 303, ; 380
	i32 457, ; 381
	i32 348, ; 382
	i32 215, ; 383
	i32 251, ; 384
	i32 354, ; 385
	i32 318, ; 386
	i32 393, ; 387
	i32 394, ; 388
	i32 133, ; 389
	i32 502, ; 390
	i32 367, ; 391
	i32 253, ; 392
	i32 424, ; 393
	i32 96, ; 394
	i32 3, ; 395
	i32 524, ; 396
	i32 105, ; 397
	i32 471, ; 398
	i32 33, ; 399
	i32 154, ; 400
	i32 407, ; 401
	i32 190, ; 402
	i32 158, ; 403
	i32 503, ; 404
	i32 155, ; 405
	i32 499, ; 406
	i32 493, ; 407
	i32 82, ; 408
	i32 476, ; 409
	i32 415, ; 410
	i32 389, ; 411
	i32 365, ; 412
	i32 408, ; 413
	i32 312, ; 414
	i32 143, ; 415
	i32 87, ; 416
	i32 487, ; 417
	i32 19, ; 418
	i32 313, ; 419
	i32 271, ; 420
	i32 51, ; 421
	i32 369, ; 422
	i32 248, ; 423
	i32 258, ; 424
	i32 278, ; 425
	i32 376, ; 426
	i32 432, ; 427
	i32 61, ; 428
	i32 54, ; 429
	i32 377, ; 430
	i32 256, ; 431
	i32 4, ; 432
	i32 97, ; 433
	i32 268, ; 434
	i32 277, ; 435
	i32 17, ; 436
	i32 447, ; 437
	i32 155, ; 438
	i32 84, ; 439
	i32 266, ; 440
	i32 478, ; 441
	i32 467, ; 442
	i32 29, ; 443
	i32 45, ; 444
	i32 64, ; 445
	i32 441, ; 446
	i32 449, ; 447
	i32 66, ; 448
	i32 172, ; 449
	i32 255, ; 450
	i32 321, ; 451
	i32 1, ; 452
	i32 357, ; 453
	i32 519, ; 454
	i32 351, ; 455
	i32 47, ; 456
	i32 397, ; 457
	i32 24, ; 458
	i32 285, ; 459
	i32 191, ; 460
	i32 189, ; 461
	i32 376, ; 462
	i32 254, ; 463
	i32 460, ; 464
	i32 468, ; 465
	i32 203, ; 466
	i32 530, ; 467
	i32 498, ; 468
	i32 165, ; 469
	i32 108, ; 470
	i32 473, ; 471
	i32 435, ; 472
	i32 12, ; 473
	i32 315, ; 474
	i32 63, ; 475
	i32 27, ; 476
	i32 23, ; 477
	i32 521, ; 478
	i32 93, ; 479
	i32 493, ; 480
	i32 422, ; 481
	i32 168, ; 482
	i32 12, ; 483
	i32 361, ; 484
	i32 189, ; 485
	i32 428, ; 486
	i32 218, ; 487
	i32 230, ; 488
	i32 233, ; 489
	i32 29, ; 490
	i32 103, ; 491
	i32 14, ; 492
	i32 292, ; 493
	i32 370, ; 494
	i32 482, ; 495
	i32 126, ; 496
	i32 536, ; 497
	i32 298, ; 498
	i32 330, ; 499
	i32 91, ; 500
	i32 319, ; 501
	i32 180, ; 502
	i32 211, ; 503
	i32 273, ; 504
	i32 248, ; 505
	i32 232, ; 506
	i32 9, ; 507
	i32 86, ; 508
	i32 406, ; 509
	i32 309, ; 510
	i32 342, ; 511
	i32 410, ; 512
	i32 71, ; 513
	i32 168, ; 514
	i32 290, ; 515
	i32 1, ; 516
	i32 329, ; 517
	i32 5, ; 518
	i32 526, ; 519
	i32 44, ; 520
	i32 374, ; 521
	i32 27, ; 522
	i32 438, ; 523
	i32 472, ; 524
	i32 504, ; 525
	i32 358, ; 526
	i32 371, ; 527
	i32 235, ; 528
	i32 500, ; 529
	i32 158, ; 530
	i32 332, ; 531
	i32 112, ; 532
	i32 217, ; 533
	i32 241, ; 534
	i32 368, ; 535
	i32 536, ; 536
	i32 222, ; 537
	i32 204, ; 538
	i32 290, ; 539
	i32 121, ; 540
	i32 199, ; 541
	i32 195, ; 542
	i32 411, ; 543
	i32 252, ; 544
	i32 436, ; 545
	i32 347, ; 546
	i32 388, ; 547
	i32 284, ; 548
	i32 510, ; 549
	i32 479, ; 550
	i32 221, ; 551
	i32 391, ; 552
	i32 426, ; 553
	i32 159, ; 554
	i32 202, ; 555
	i32 180, ; 556
	i32 534, ; 557
	i32 131, ; 558
	i32 353, ; 559
	i32 57, ; 560
	i32 429, ; 561
	i32 138, ; 562
	i32 83, ; 563
	i32 30, ; 564
	i32 299, ; 565
	i32 404, ; 566
	i32 10, ; 567
	i32 506, ; 568
	i32 489, ; 569
	i32 349, ; 570
	i32 468, ; 571
	i32 171, ; 572
	i32 418, ; 573
	i32 222, ; 574
	i32 296, ; 575
	i32 150, ; 576
	i32 94, ; 577
	i32 179, ; 578
	i32 479, ; 579
	i32 309, ; 580
	i32 60, ; 581
	i32 460, ; 582
	i32 228, ; 583
	i32 469, ; 584
	i32 257, ; 585
	i32 157, ; 586
	i32 214, ; 587
	i32 64, ; 588
	i32 492, ; 589
	i32 88, ; 590
	i32 79, ; 591
	i32 47, ; 592
	i32 226, ; 593
	i32 143, ; 594
	i32 461, ; 595
	i32 393, ; 596
	i32 508, ; 597
	i32 524, ; 598
	i32 359, ; 599
	i32 303, ; 600
	i32 74, ; 601
	i32 91, ; 602
	i32 356, ; 603
	i32 423, ; 604
	i32 462, ; 605
	i32 135, ; 606
	i32 90, ; 607
	i32 341, ; 608
	i32 456, ; 609
	i32 362, ; 610
	i32 416, ; 611
	i32 300, ; 612
	i32 183, ; 613
	i32 259, ; 614
	i32 191, ; 615
	i32 420, ; 616
	i32 506, ; 617
	i32 112, ; 618
	i32 42, ; 619
	i32 431, ; 620
	i32 159, ; 621
	i32 4, ; 622
	i32 445, ; 623
	i32 249, ; 624
	i32 103, ; 625
	i32 504, ; 626
	i32 501, ; 627
	i32 538, ; 628
	i32 457, ; 629
	i32 70, ; 630
	i32 433, ; 631
	i32 201, ; 632
	i32 60, ; 633
	i32 39, ; 634
	i32 372, ; 635
	i32 234, ; 636
	i32 286, ; 637
	i32 480, ; 638
	i32 196, ; 639
	i32 153, ; 640
	i32 56, ; 641
	i32 34, ; 642
	i32 182, ; 643
	i32 378, ; 644
	i32 466, ; 645
	i32 213, ; 646
	i32 228, ; 647
	i32 283, ; 648
	i32 21, ; 649
	i32 163, ; 650
	i32 240, ; 651
	i32 491, ; 652
	i32 354, ; 653
	i32 517, ; 654
	i32 352, ; 655
	i32 497, ; 656
	i32 532, ; 657
	i32 513, ; 658
	i32 346, ; 659
	i32 140, ; 660
	i32 520, ; 661
	i32 215, ; 662
	i32 89, ; 663
	i32 413, ; 664
	i32 418, ; 665
	i32 392, ; 666
	i32 147, ; 667
	i32 302, ; 668
	i32 263, ; 669
	i32 162, ; 670
	i32 427, ; 671
	i32 331, ; 672
	i32 6, ; 673
	i32 375, ; 674
	i32 169, ; 675
	i32 31, ; 676
	i32 107, ; 677
	i32 483, ; 678
	i32 312, ; 679
	i32 267, ; 680
	i32 219, ; 681
	i32 518, ; 682
	i32 241, ; 683
	i32 346, ; 684
	i32 405, ; 685
	i32 212, ; 686
	i32 187, ; 687
	i32 281, ; 688
	i32 339, ; 689
	i32 210, ; 690
	i32 167, ; 691
	i32 211, ; 692
	i32 313, ; 693
	i32 483, ; 694
	i32 421, ; 695
	i32 140, ; 696
	i32 59, ; 697
	i32 451, ; 698
	i32 144, ; 699
	i32 489, ; 700
	i32 398, ; 701
	i32 190, ; 702
	i32 535, ; 703
	i32 492, ; 704
	i32 81, ; 705
	i32 272, ; 706
	i32 74, ; 707
	i32 130, ; 708
	i32 25, ; 709
	i32 7, ; 710
	i32 93, ; 711
	i32 502, ; 712
	i32 475, ; 713
	i32 343, ; 714
	i32 137, ; 715
	i32 275, ; 716
	i32 223, ; 717
	i32 113, ; 718
	i32 9, ; 719
	i32 267, ; 720
	i32 104, ; 721
	i32 19, ; 722
	i32 445, ; 723
	i32 220, ; 724
	i32 311, ; 725
	i32 325, ; 726
	i32 539, ; 727
	i32 305, ; 728
	i32 196, ; 729
	i32 33, ; 730
	i32 293, ; 731
	i32 46, ; 732
	i32 454, ; 733
	i32 244, ; 734
	i32 30, ; 735
	i32 294, ; 736
	i32 57, ; 737
	i32 134, ; 738
	i32 114, ; 739
	i32 231, ; 740
	i32 193, ; 741
	i32 348, ; 742
	i32 291, ; 743
	i32 439, ; 744
	i32 360, ; 745
	i32 55, ; 746
	i32 422, ; 747
	i32 216, ; 748
	i32 6, ; 749
	i32 77, ; 750
	i32 235, ; 751
	i32 265, ; 752
	i32 304, ; 753
	i32 505, ; 754
	i32 187, ; 755
	i32 526, ; 756
	i32 111, ; 757
	i32 262, ; 758
	i32 308, ; 759
	i32 501, ; 760
	i32 273, ; 761
	i32 433, ; 762
	i32 102, ; 763
	i32 491, ; 764
	i32 470, ; 765
	i32 439, ; 766
	i32 442, ; 767
	i32 481, ; 768
	i32 415, ; 769
	i32 243, ; 770
	i32 185, ; 771
	i32 503, ; 772
	i32 382, ; 773
	i32 474, ; 774
	i32 414, ; 775
	i32 484, ; 776
	i32 170, ; 777
	i32 115, ; 778
	i32 514, ; 779
	i32 343, ; 780
	i32 177, ; 781
	i32 298, ; 782
	i32 76, ; 783
	i32 355, ; 784
	i32 85, ; 785
	i32 357, ; 786
	i32 287, ; 787
	i32 258, ; 788
	i32 535, ; 789
	i32 194, ; 790
	i32 333, ; 791
	i32 401, ; 792
	i32 160, ; 793
	i32 2, ; 794
	i32 304, ; 795
	i32 24, ; 796
	i32 280, ; 797
	i32 32, ; 798
	i32 117, ; 799
	i32 37, ; 800
	i32 16, ; 801
	i32 374, ; 802
	i32 475, ; 803
	i32 480, ; 804
	i32 174, ; 805
	i32 499, ; 806
	i32 498, ; 807
	i32 52, ; 808
	i32 466, ; 809
	i32 358, ; 810
	i32 195, ; 811
	i32 20, ; 812
	i32 274, ; 813
	i32 123, ; 814
	i32 154, ; 815
	i32 182, ; 816
	i32 209, ; 817
	i32 488, ; 818
	i32 311, ; 819
	i32 478, ; 820
	i32 131, ; 821
	i32 394, ; 822
	i32 237, ; 823
	i32 400, ; 824
	i32 293, ; 825
	i32 148, ; 826
	i32 199, ; 827
	i32 399, ; 828
	i32 400, ; 829
	i32 276, ; 830
	i32 120, ; 831
	i32 28, ; 832
	i32 132, ; 833
	i32 100, ; 834
	i32 134, ; 835
	i32 465, ; 836
	i32 331, ; 837
	i32 444, ; 838
	i32 153, ; 839
	i32 289, ; 840
	i32 97, ; 841
	i32 125, ; 842
	i32 277, ; 843
	i32 388, ; 844
	i32 69, ; 845
	i32 528, ; 846
	i32 380, ; 847
	i32 72, ; 848
	i32 386, ; 849
	i32 529, ; 850
	i32 316, ; 851
	i32 537, ; 852
	i32 334, ; 853
	i32 136, ; 854
	i32 256, ; 855
	i32 421, ; 856
	i32 124, ; 857
	i32 471, ; 858
	i32 71, ; 859
	i32 494, ; 860
	i32 507, ; 861
	i32 111, ; 862
	i32 326, ; 863
	i32 174, ; 864
	i32 207, ; 865
	i32 463, ; 866
	i32 152, ; 867
	i32 521, ; 868
	i32 443, ; 869
	i32 449, ; 870
	i32 520, ; 871
	i32 537, ; 872
	i32 355, ; 873
	i32 118, ; 874
	i32 302, ; 875
	i32 175, ; 876
	i32 505, ; 877
	i32 127, ; 878
	i32 133, ; 879
	i32 208, ; 880
	i32 390, ; 881
	i32 470, ; 882
	i32 482, ; 883
	i32 77, ; 884
	i32 46, ; 885
	i32 305, ; 886
	i32 73, ; 887
	i32 63, ; 888
	i32 98, ; 889
	i32 84, ; 890
	i32 522, ; 891
	i32 43, ; 892
	i32 61, ; 893
	i32 219, ; 894
	i32 332, ; 895
	i32 419, ; 896
	i32 527, ; 897
	i32 206, ; 898
	i32 399, ; 899
	i32 37, ; 900
	i32 387, ; 901
	i32 40, ; 902
	i32 295, ; 903
	i32 361, ; 904
	i32 160, ; 905
	i32 260, ; 906
	i32 98, ; 907
	i32 261, ; 908
	i32 300, ; 909
	i32 268, ; 910
	i32 208, ; 911
	i32 238, ; 912
	i32 264, ; 913
	i32 135, ; 914
	i32 20, ; 915
	i32 65, ; 916
	i32 509, ; 917
	i32 125, ; 918
	i32 75, ; 919
	i32 324, ; 920
	i32 164, ; 921
	i32 209, ; 922
	i32 156, ; 923
	i32 5, ; 924
	i32 292, ; 925
	i32 49, ; 926
	i32 338, ; 927
	i32 510, ; 928
	i32 144, ; 929
	i32 139, ; 930
	i32 464, ; 931
	i32 100, ; 932
	i32 225, ; 933
	i32 123, ; 934
	i32 120, ; 935
	i32 142, ; 936
	i32 382, ; 937
	i32 39, ; 938
	i32 384, ; 939
	i32 68, ; 940
	i32 41, ; 941
	i32 529, ; 942
	i32 397, ; 943
	i32 453, ; 944
	i32 164, ; 945
	i32 401, ; 946
	i32 73, ; 947
	i32 419, ; 948
	i32 363, ; 949
	i32 496, ; 950
	i32 523, ; 951
	i32 484, ; 952
	i32 165, ; 953
	i32 213, ; 954
	i32 253, ; 955
	i32 127, ; 956
	i32 310, ; 957
	i32 409, ; 958
	i32 485, ; 959
	i32 360, ; 960
	i32 68, ; 961
	i32 169, ; 962
	i32 243, ; 963
	i32 409, ; 964
	i32 438, ; 965
	i32 231, ; 966
	i32 490, ; 967
	i32 323, ; 968
	i32 297, ; 969
	i32 474, ; 970
	i32 261, ; 971
	i32 230, ; 972
	i32 330, ; 973
	i32 151, ; 974
	i32 45, ; 975
	i32 108, ; 976
	i32 48, ; 977
	i32 96, ; 978
	i32 31, ; 979
	i32 366, ; 980
	i32 522, ; 981
	i32 443, ; 982
	i32 23, ; 983
	i32 166, ; 984
	i32 22, ; 985
	i32 370, ; 986
	i32 364, ; 987
	i32 138, ; 988
	i32 380, ; 989
	i32 78, ; 990
	i32 530, ; 991
	i32 173, ; 992
	i32 379, ; 993
	i32 54, ; 994
	i32 377, ; 995
	i32 323, ; 996
	i32 328, ; 997
	i32 10, ; 998
	i32 282, ; 999
	i32 192, ; 1000
	i32 327, ; 1001
	i32 314, ; 1002
	i32 186, ; 1003
	i32 363, ; 1004
	i32 16, ; 1005
	i32 139, ; 1006
	i32 224, ; 1007
	i32 385, ; 1008
	i32 13, ; 1009
	i32 218, ; 1010
	i32 15, ; 1011
	i32 122, ; 1012
	i32 525, ; 1013
	i32 87, ; 1014
	i32 149, ; 1015
	i32 22, ; 1016
	i32 364, ; 1017
	i32 515, ; 1018
	i32 34, ; 1019
	i32 79, ; 1020
	i32 515, ; 1021
	i32 353, ; 1022
	i32 270, ; 1023
	i32 395, ; 1024
	i32 147, ; 1025
	i32 80, ; 1026
	i32 513, ; 1027
	i32 175, ; 1028
	i32 272, ; 1029
	i32 412, ; 1030
	i32 486, ; 1031
	i32 434, ; 1032
	i32 275, ; 1033
	i32 525, ; 1034
	i32 42, ; 1035
	i32 197, ; 1036
	i32 254, ; 1037
	i32 26, ; 1038
	i32 464, ; 1039
	i32 325, ; 1040
	i32 322, ; 1041
	i32 107, ; 1042
	i32 257, ; 1043
	i32 110, ; 1044
	i32 221, ; 1045
	i32 425, ; 1046
	i32 516, ; 1047
	i32 387, ; 1048
	i32 7, ; 1049
	i32 437, ; 1050
	i32 356, ; 1051
	i32 210, ; 1052
	i32 454, ; 1053
	i32 44, ; 1054
	i32 509, ; 1055
	i32 161, ; 1056
	i32 446, ; 1057
	i32 203, ; 1058
	i32 148, ; 1059
	i32 287, ; 1060
	i32 327, ; 1061
	i32 38, ; 1062
	i32 15, ; 1063
	i32 440, ; 1064
	i32 271, ; 1065
	i32 146, ; 1066
	i32 8, ; 1067
	i32 308, ; 1068
	i32 186, ; 1069
	i32 329, ; 1070
	i32 130, ; 1071
	i32 519, ; 1072
	i32 365, ; 1073
	i32 247, ; 1074
	i32 518, ; 1075
	i32 514, ; 1076
	i32 367, ; 1077
	i32 345, ; 1078
	i32 94 ; 1079
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
