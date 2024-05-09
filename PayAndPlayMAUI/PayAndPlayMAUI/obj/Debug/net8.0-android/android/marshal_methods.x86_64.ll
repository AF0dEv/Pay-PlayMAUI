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

@assembly_image_cache = dso_local local_unnamed_addr global [531 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1062 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 302
	i64 41321585999485087, ; 1: cs\Humanizer.resources => 0x92cdc3770e189f => 362
	i64 87581036036292584, ; 2: bg\Humanizer.resources => 0x137267cfe00ffe8 => 360
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 216
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 5: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 229
	i64 147864158106373369, ; 6: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x20d51ab1af14cf9 => 447
	i64 181099460066822533, ; 7: Microcharts.Droid.dll => 0x28364ffda4c4985 => 177
	i64 182106475126841455, ; 8: Humanizer.dll => 0x286f8dfd13be06f => 176
	i64 196720943101637631, ; 9: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 10: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 289
	i64 218243443877096319, ; 11: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x3075b4182da2b7f => 446
	i64 229794953483747371, ; 12: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 13: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 330
	i64 276471738906638264, ; 14: NuGet.LibraryModel.dll => 0x3d63994ebf6f7b8 => 247
	i64 295915112840604065, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 333
	i64 313293977520445317, ; 16: zh-CN\Humanizer.resources.dll => 0x4590b3670601785 => 402
	i64 316157742385208084, ; 17: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 296
	i64 326406607831425625, ; 18: ru\Microsoft.CodeAnalysis.resources.dll => 0x487a1149821e259 => 414
	i64 350667413455104241, ; 19: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 374214195677100225, ; 20: Microsoft.CodeAnalysis.Razor => 0x53179d40b3df8c1 => 193
	i64 406486731283901647, ; 21: es\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x5a4218748162ccf => 433
	i64 422779754995088667, ; 22: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 23: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 332
	i64 455940612404211789, ; 24: es\Microsoft.CodeAnalysis.Workspaces.resources => 0x653d3924106f04d => 485
	i64 496929328902369351, ; 25: cs\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6e572977fb2f047 => 431
	i64 535597045548414309, ; 26: NuGet.ProjectModel => 0x76ed2acdaa97565 => 249
	i64 560278790331054453, ; 27: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 628098050054629041, ; 28: is\Humanizer.resources => 0x8b773d9459f26b1 => 376
	i64 634256334200181332, ; 29: Microsoft.CodeAnalysis.CSharp.dll => 0x8cd54c6888b1254 => 188
	i64 634308326490598313, ; 30: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 315
	i64 641670810394036365, ; 31: PayAndPlayMAUI => 0x8e7ac33cc46088d => 0
	i64 649145001856603771, ; 32: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 670564002081277297, ; 33: Microsoft.Identity.Client.dll => 0x94e526837380571 => 217
	i64 702024105029695270, ; 34: System.Drawing.Common => 0x9be17343c0e7726 => 264
	i64 716654442676844823, ; 35: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x9f2116b2a757917 => 443
	i64 726593401349421218, ; 36: vi\Humanizer.resources => 0xa1560d94f9338a2 => 401
	i64 737318085524959015, ; 37: NuGet.Frameworks => 0xa3b7ae46e2faf27 => 246
	i64 742388989842837819, ; 38: Microsoft.VisualStudio.Web.CodeGenerators.Mvc => 0xa4d7eda58be513b => 239
	i64 750875890346172408, ; 39: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 766770282063650139, ; 40: sr\Humanizer.resources => 0xaa41d824ebadd5b => 393
	i64 780588404640540820, ; 41: ms-MY\Humanizer.resources.dll => 0xad53504ae636894 => 382
	i64 798450721097591769, ; 42: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 290
	i64 799765834175365804, ; 43: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 44: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 508
	i64 856745483922317989, ; 45: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xbe3c57a781c22a5 => 456
	i64 872800313462103108, ; 46: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 301
	i64 895210737996778430, ; 47: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 316
	i64 895583451341852636, ; 48: Microsoft.Build.Framework.dll => 0xc6dc0676bf30fdc => 185
	i64 917904283621948910, ; 49: zh-Hans\Microsoft.CodeAnalysis.Features.resources => 0xcbd0d152b187dee => 468
	i64 937459790420187032, ; 50: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 232
	i64 940822596282819491, ; 51: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 52: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 989127641070905171, ; 53: cs\Microsoft.CodeAnalysis.CSharp.resources => 0xdba1659538d2753 => 418
	i64 1010599046655515943, ; 54: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1027655141085176894, ; 55: NuGet.DependencyResolver.Core.dll => 0xe42f6e7f3fc643e => 245
	i64 1038220935101773657, ; 56: uk\Humanizer.resources.dll => 0xe688070931d7759 => 398
	i64 1060858978308751610, ; 57: Azure.Core.dll => 0xeb8ed9ebee080fa => 173
	i64 1120440138749646132, ; 58: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 345
	i64 1176030902986760664, ; 59: ja\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x105219e0196861d8 => 423
	i64 1264098730510327121, ; 60: it\Microsoft.CodeAnalysis.Workspaces.resources => 0x118afb1911171d51 => 487
	i64 1268860745194512059, ; 61: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 62: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 202
	i64 1290330591097798837, ; 63: PayAndPlayMAUI.dll => 0x11e82cd60d3440b5 => 0
	i64 1301626418029409250, ; 64: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 65: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 285
	i64 1361298542975918955, ; 66: Microsoft.VisualStudio.Web.CodeGeneration.Templating => 0x12e44dcff756236b => 237
	i64 1369545283391376210, ; 67: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 323
	i64 1404195534211153682, ; 68: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1416135423712704079, ; 69: Microcharts => 0x13a71faa343e364f => 178
	i64 1425944114962822056, ; 70: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 71: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1484341423788646703, ; 72: de\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x149970a91a51e12f => 432
	i64 1486715745332614827, ; 73: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 226
	i64 1492407416628141526, ; 74: it\Microsoft.CodeAnalysis.CSharp.resources => 0x14b618a368475dd6 => 422
	i64 1492954217099365037, ; 75: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 76: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 77: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1576750169145655260, ; 78: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 344
	i64 1578461236315596192, ; 79: zh-Hant\Microsoft.CodeAnalysis.resources => 0x15e7d221a250a5a0 => 417
	i64 1580831035586038082, ; 80: NuGet.Versioning.dll => 0x15f03d738604c942 => 251
	i64 1604828716977660633, ; 81: it\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x16457f3720cca2d9 => 435
	i64 1624659445732251991, ; 82: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 284
	i64 1628611045998245443, ; 83: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 319
	i64 1636321030536304333, ; 84: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 309
	i64 1639340239664632727, ; 85: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 179
	i64 1651782184287836205, ; 86: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659106469264733432, ; 87: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x1706548b2113b4f8 => 452
	i64 1659332977923810219, ; 88: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 89: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 90: Newtonsoft.Json => 0x18071957e9b889d7 => 242
	i64 1735388228521408345, ; 91: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1741042453479892310, ; 92: tr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x18296ce3128b2556 => 441
	i64 1743969030606105336, ; 93: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 94: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 95: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 283
	i64 1825687700144851180, ; 96: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 97: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 502
	i64 1836611346387731153, ; 98: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 330
	i64 1854145951182283680, ; 99: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 100: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 183
	i64 1875417405349196092, ; 101: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 102: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 280
	i64 1881198190668717030, ; 103: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 524
	i64 1897575647115118287, ; 104: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 332
	i64 1920760634179481754, ; 105: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 227
	i64 1956582621840560024, ; 106: de\Microsoft.CodeAnalysis.CSharp.resources => 0x1b272d8734824f98 => 419
	i64 1966367835830129316, ; 107: fr\Microsoft.CodeAnalysis.Workspaces.resources => 0x1b49f120e06892a4 => 486
	i64 1972384582241139858, ; 108: Microsoft.CodeAnalysis.CSharp => 0x1b5f5153d0f0bc92 => 188
	i64 1972385128188460614, ; 109: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 110: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 317
	i64 2031290047871406080, ; 111: pl\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x1c3097894b295000 => 438
	i64 2040001226662520565, ; 112: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 113: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 114: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 353
	i64 2075546959977054240, ; 115: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore => 0x1ccdd2f6a0130020 => 236
	i64 2077488400323790517, ; 116: Microsoft.CodeAnalysis.Features.dll => 0x1cd4b8b16e4b46b5 => 192
	i64 2080945842184875448, ; 117: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 118: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 119: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 120: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 242
	i64 2165310824878145998, ; 121: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 277
	i64 2165725771938924357, ; 122: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 287
	i64 2188424039095181899, ; 123: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x1e5ed8119c31a24b => 446
	i64 2192948757939169934, ; 124: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 200
	i64 2200176636225660136, ; 125: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 214
	i64 2219986950236918443, ; 126: tr\Microsoft.CodeAnalysis.CSharp.resources => 0x1ecefa5e86dfd2ab => 428
	i64 2262844636196693701, ; 127: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 301
	i64 2275252695863103437, ; 128: System.Reflection.MetadataLoadContext.dll => 0x1f935245a72b8fcd => 268
	i64 2283766573134170374, ; 129: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x1fb191992d92c906 => 491
	i64 2287834202362508563, ; 130: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 131: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 132: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 329
	i64 2315304989185124968, ; 133: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 134: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 223
	i64 2323958648452149394, ; 135: cs\Microsoft.CodeAnalysis.resources => 0x20405c13f1aff092 => 405
	i64 2329709569556905518, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 312
	i64 2335503487726329082, ; 137: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 138: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2347015728160852727, ; 139: uz-Cyrl-UZ\Humanizer.resources.dll => 0x2092465ea7484af7 => 399
	i64 2352472270739883180, ; 140: Microsoft.DotNet.Scaffolding.Shared => 0x20a5a910f96844ac => 198
	i64 2391088182243165216, ; 141: Microsoft.VisualStudio.Web.CodeGeneration.Utils => 0x212eda08813d0420 => 238
	i64 2398049273691867220, ; 142: it\Humanizer.resources.dll => 0x2147951be8498854 => 377
	i64 2455121377850707897, ; 143: NuGet.Frameworks.dll => 0x221257e2a7424fb9 => 246
	i64 2470498323731680442, ; 144: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 294
	i64 2479423007379663237, ; 145: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 339
	i64 2497223385847772520, ; 146: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2530193663219599640, ; 147: fr\Microsoft.CodeAnalysis.resources.dll => 0x231d0dbb2d260918 => 408
	i64 2547086958574651984, ; 148: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 278
	i64 2554797818648757682, ; 149: System.Runtime.Caching.dll => 0x23747714858085b2 => 269
	i64 2565166297354812447, ; 150: zh-Hant\Humanizer.resources => 0x23994d2817a33c1f => 404
	i64 2592350477072141967, ; 151: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 152: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 523
	i64 2606170708597053130, ; 153: Microsoft.AspNetCore.Identity.EntityFrameworkCore => 0x242afa738df496ca => 181
	i64 2612152650457191105, ; 154: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 224
	i64 2624866290265602282, ; 155: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 156: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 157: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 207
	i64 2662981627730767622, ; 158: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 498
	i64 2704260652175460545, ; 159: System.Composition.Convention => 0x258776bc40fc08c1 => 258
	i64 2706075432581334785, ; 160: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2746068332251068081, ; 161: da\Humanizer.resources => 0x261bfe9950c636b1 => 363
	i64 2768338167292098076, ; 162: hr\Humanizer.resources.dll => 0x266b1ce55799f61c => 372
	i64 2780813979559651871, ; 163: pl\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x26976f94be17ea1f => 477
	i64 2783046991838674048, ; 164: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 165: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 334
	i64 2789714023057451704, ; 166: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 220
	i64 2815524396660695947, ; 167: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2844780895111324988, ; 168: System.Composition.TypedParts => 0x277ab126dceda53c => 261
	i64 2851879596360956261, ; 169: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 262
	i64 2853227249135621881, ; 170: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources => 0x2798b310e83196f9 => 481
	i64 2895129759130297543, ; 171: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 503
	i64 2923871038697555247, ; 172: Jsr305Binding => 0x2893ad37e69ec52f => 346
	i64 2929104377493279868, ; 173: de\Humanizer.resources => 0x28a644e98a87547c => 364
	i64 2947509796159691470, ; 174: Microsoft.Build.dll => 0x28e7a88b04151ace => 184
	i64 2947850844982079217, ; 175: sr-Latn\Humanizer.resources.dll => 0x28e8deb9a1fdeef1 => 394
	i64 2964143786520939826, ; 176: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x2922c111b2c30d32 => 443
	i64 2965696071044998957, ; 177: Microsoft.Build => 0x292844dd1a68a72d => 184
	i64 2980608131069488904, ; 178: ko\Microsoft.CodeAnalysis.resources.dll => 0x295d3f4da309af08 => 411
	i64 3017136373564924869, ; 179: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 180: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 345
	i64 3106852385031680087, ; 181: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 182: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3122911337338800527, ; 183: Microcharts.dll => 0x2b56cf50bf1e898f => 178
	i64 3135773902340015556, ; 184: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3164891818821290784, ; 185: Microsoft.VisualStudio.Web.CodeGeneration.Core.dll => 0x2bebf45745620b20 => 234
	i64 3177281325366702732, ; 186: lv\Humanizer.resources => 0x2c17f8880df6f28c => 381
	i64 3196199893121312905, ; 187: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x2c5b2ede5ca32889 => 439
	i64 3219426262500628937, ; 188: zh-Hans\Humanizer.resources => 0x2cadb320e4e9d9c9 => 403
	i64 3238539556702659506, ; 189: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 240
	i64 3245892109222566308, ; 190: Humanizer => 0x2d0bb9ad057459a4 => 176
	i64 3249191069799534468, ; 191: pl\Microsoft.CodeAnalysis.Features.resources.dll => 0x2d17721022c5cf84 => 464
	i64 3276991435551191081, ; 192: tr\Microsoft.CodeAnalysis.resources => 0x2d7a36593006b029 => 415
	i64 3281594302220646930, ; 193: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3286236885238732615, ; 194: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x2d9b0f093070d747 => 450
	i64 3289520064315143713, ; 195: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 310
	i64 3296267368358378859, ; 196: fr\Humanizer.resources => 0x2dbeb1b507b67d6b => 369
	i64 3300711494004215107, ; 197: az\Humanizer.resources => 0x2dce7b9daa2b8d43 => 359
	i64 3303437397778967116, ; 198: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 281
	i64 3311221304742556517, ; 199: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 200: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 201: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 202: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 356
	i64 3347716888374667791, ; 203: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll => 0x2e757ac5e425ea0f => 236
	i64 3402534845034375023, ; 204: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 265
	i64 3414639567687375782, ; 205: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 254
	i64 3429672777697402584, ; 206: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 229
	i64 3437845325506641314, ; 207: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3485247931931847483, ; 208: NuGet.DependencyResolver.Core => 0x305e168748f66b3b => 245
	i64 3493805808809882663, ; 209: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 336
	i64 3494946837667399002, ; 210: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 205
	i64 3508450208084372758, ; 211: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3518196480742834290, ; 212: hr\Humanizer.resources => 0x30d3250f1cb4c072 => 372
	i64 3519485567556646019, ; 213: af\Humanizer.resources.dll => 0x30d7b97a0653f483 => 357
	i64 3522470458906976663, ; 214: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 335
	i64 3523004241079211829, ; 215: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 204
	i64 3531994851595924923, ; 216: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 217: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 218: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 518
	i64 3571415421602489686, ; 219: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3571549974538685733, ; 220: es\Humanizer.resources => 0x3190b1c769ef0d25 => 366
	i64 3617693510765662356, ; 221: tr\Humanizer.resources.dll => 0x3234a114a76c5094 => 397
	i64 3638003163729360188, ; 222: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 206
	i64 3647754201059316852, ; 223: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 224: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 205
	i64 3659371656528649588, ; 225: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 275
	i64 3716579019761409177, ; 226: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 227: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 328
	i64 3772598417116884899, ; 228: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 302
	i64 3802880763638011883, ; 229: hy\Humanizer.resources.dll => 0x34c68be7efcf57eb => 374
	i64 3824932011597312594, ; 230: mt\Humanizer.resources.dll => 0x3514e36631473252 => 383
	i64 3867113825886090672, ; 231: zh-Hans\Microsoft.CodeAnalysis.Features.resources.dll => 0x35aabf8929f135b0 => 468
	i64 3869221888984012293, ; 232: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 212
	i64 3869649043256705283, ; 233: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 234: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 227
	i64 3919223565570527920, ; 235: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 236: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 237: System.Memory => 0x370b03412596249e => 62
	i64 3986466921713458903, ; 238: System.Composition.Hosting => 0x3752c68b49935ed7 => 259
	i64 4006972109285359177, ; 239: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 240: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4050160939984404678, ; 241: hy\Humanizer.resources => 0x38350fea8eeec0c6 => 374
	i64 4054446190056038390, ; 242: Microsoft.CodeAnalysis.Scripting => 0x384449541739dff6 => 194
	i64 4070326265757318011, ; 243: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 499
	i64 4073500526318903918, ; 244: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 245: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 225
	i64 4103536282112930583, ; 246: pl\Humanizer.resources => 0x38f2b081d244b317 => 387
	i64 4120493066591692148, ; 247: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 529
	i64 4127194541735850366, ; 248: es\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x3946bd91a318b17e => 472
	i64 4148881117810174540, ; 249: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 250: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4159398497900796080, ; 251: pt-BR\Microsoft.CodeAnalysis.Scripting.resources => 0x39b926e57aab98b0 => 478
	i64 4167269041631776580, ; 252: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 253: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 254: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 255: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 296
	i64 4204757096761433397, ; 256: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x3a5a4c4d3f449d35 => 442
	i64 4205801962323029395, ; 257: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 258: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4247844498619075610, ; 259: nl\Humanizer.resources.dll => 0x3af36010c1498c1a => 386
	i64 4248157371830482495, ; 260: es\Microsoft.CodeAnalysis.resources.dll => 0x3af47c9f39e9b63f => 407
	i64 4282138915307457788, ; 261: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4297618840113831272, ; 262: ru\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x3ba43590b902dd68 => 479
	i64 4321865999928413850, ; 263: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 263
	i64 4329480046338915646, ; 264: Microsoft.DotNet.Scaffolding.Shared.dll => 0x3c156729e02c3d3e => 198
	i64 4360412976914417659, ; 265: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 524
	i64 4371205382599439717, ; 266: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x3ca9a422c61d7565 => 444
	i64 4373617458794931033, ; 267: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4379749246949246326, ; 268: tr\Microsoft.CodeAnalysis.Features.resources.dll => 0x3cc7febc35b1c576 => 467
	i64 4397634830160618470, ; 269: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4445901490610013307, ; 270: sv\Humanizer.resources.dll => 0x3db303d9ae30847b => 395
	i64 4477672992252076438, ; 271: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 272: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4501269696413264595, ; 273: fr-BE\Humanizer.resources => 0x3e77b8f0acf16ad3 => 370
	i64 4513320955448359355, ; 274: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 201
	i64 4533124835995628778, ; 275: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4570722926389787063, ; 276: tr\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x3f6e7848ea3279b7 => 441
	i64 4612482779465751747, ; 277: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 200
	i64 4633188143799146779, ; 278: fr\Microsoft.CodeAnalysis.resources => 0x404c6411b0b3191b => 408
	i64 4636684751163556186, ; 279: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 340
	i64 4656760805671048172, ; 280: System.Reflection.MetadataLoadContext => 0x40a02347b9fc13ec => 268
	i64 4659009777957576247, ; 281: sr\Humanizer.resources.dll => 0x40a820b5643b9e37 => 393
	i64 4659385769810716620, ; 282: Microsoft.AspNetCore.Identity.EntityFrameworkCore.dll => 0x40a976abd113e7cc => 181
	i64 4672453897036726049, ; 283: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 284: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4737023577144429365, ; 285: fr\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x41bd49d878580b35 => 486
	i64 4743821336939966868, ; 286: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 287: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 314
	i64 4769962302518424429, ; 288: de\Humanizer.resources.dll => 0x42324f71199d736d => 364
	i64 4782435378178000589, ; 289: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x425e9fa3558f86cd => 453
	i64 4794310189461587505, ; 290: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 278
	i64 4795410492532947900, ; 291: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 335
	i64 4809057822547766521, ; 292: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 293: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4823480931696991453, ; 294: sr-Latn\Humanizer.resources => 0x42f07259faab5cdd => 394
	i64 4848309767277065693, ; 295: ro\Humanizer.resources => 0x4348a80bbf9b35dd => 389
	i64 4849062125611947093, ; 296: Microsoft.VisualStudio.Web.CodeGeneration.dll => 0x434b544fd2e69455 => 233
	i64 4853321196694829351, ; 297: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 298: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 514
	i64 4953714692329509532, ; 299: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 522
	i64 5055365687667823624, ; 300: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 279
	i64 5080318486421939212, ; 301: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x4680eabf2907a40c => 439
	i64 5081566143765835342, ; 302: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5083120864858317402, ; 303: zh-Hans\Microsoft.CodeAnalysis.resources => 0x468adf7ebc41a25a => 416
	i64 5099468265966638712, ; 304: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5101282090298625898, ; 305: ja\Microsoft.CodeAnalysis.Workspaces.resources => 0x46cb65088b4fcf6a => 488
	i64 5103417709280584325, ; 306: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5107702058248948463, ; 307: ru\Microsoft.CodeAnalysis.CSharp.resources => 0x46e233f5d075caef => 427
	i64 5107903599106960149, ; 308: pl\Humanizer.resources.dll => 0x46e2eb42b3b5ab15 => 387
	i64 5182934613077526976, ; 309: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 310: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 321
	i64 5244375036463807528, ; 311: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 312: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 313: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 314: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 313
	i64 5290786973231294105, ; 315: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5341528465380060113, ; 316: ko\Microsoft.CodeAnalysis.Features.resources => 0x4a20ebd6b09dabd1 => 463
	i64 5362325392475259001, ; 317: fr\Microsoft.CodeAnalysis.Features.resources.dll => 0x4a6ace889c8b8079 => 460
	i64 5376510917114486089, ; 318: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 339
	i64 5408338804355907810, ; 319: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 337
	i64 5423376490970181369, ; 320: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 321: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5440726247657876941, ; 322: th-TH\Humanizer.resources => 0x4b8157b22fcaadcd => 396
	i64 5446034149219586269, ; 323: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 324: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 292
	i64 5457765010617926378, ; 325: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 326: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 522
	i64 5478493157351955748, ; 327: NuGet.Protocol.dll => 0x4c078480145f1d24 => 250
	i64 5488847537322884930, ; 328: System.Windows.Extensions => 0x4c2c4dc108687f42 => 273
	i64 5507995362134886206, ; 329: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 330: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 525
	i64 5527431512186326818, ; 331: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5530753022255820472, ; 332: de\Microsoft.CodeAnalysis.Features.resources.dll => 0x4cc12e920ff9eeb8 => 458
	i64 5570799893513421663, ; 333: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 334: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 335: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 282
	i64 5586474322064658720, ; 336: fr\Microsoft.CodeAnalysis.CSharp.resources => 0x4d8724cc29815120 => 421
	i64 5591791169662171124, ; 337: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 338: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5666966988235717116, ; 339: ku\Humanizer.resources.dll => 0x4ea51c736fa7b9fc => 380
	i64 5692067934154308417, ; 340: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 342
	i64 5697338526674305454, ; 341: pl\Microsoft.CodeAnalysis.CSharp.resources => 0x4f1103344791c1ae => 425
	i64 5717718751406333486, ; 342: NuGet.Configuration => 0x4f596ae91f2a1e2e => 244
	i64 5724799082821825042, ; 343: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 305
	i64 5757522595884336624, ; 344: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 291
	i64 5783556987928984683, ; 345: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5802406400352127139, ; 346: Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll => 0x508649e0ef7108a3 => 239
	i64 5896680224035167651, ; 347: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 311
	i64 5959344983920014087, ; 348: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 331
	i64 5979151488806146654, ; 349: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5981100626307227755, ; 350: pt-BR\Microsoft.CodeAnalysis.CSharp.resources => 0x5301235494e8a06b => 426
	i64 5984759512290286505, ; 351: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 5985025747959996647, ; 352: Microsoft.DiaSymReader.dll => 0x530f15352eb8e0e7 => 197
	i64 6027980928648036188, ; 353: ko\Microsoft.CodeAnalysis.Scripting.resources => 0x53a7b0b78ce53f5c => 476
	i64 6037456759088912127, ; 354: ko\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x53c95aef404696ff => 437
	i64 6052006988162547083, ; 355: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x53fd0c4a739c3d8b => 449
	i64 6052904953572895746, ; 356: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x54003cfc50ea2c02 => 454
	i64 6102788177522843259, ; 357: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 331
	i64 6200764641006662125, ; 358: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 519
	i64 6222399776351216807, ; 359: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 360: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 361: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 362: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300676701234028427, ; 363: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 502
	i64 6319713645133255417, ; 364: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 315
	i64 6357457916754632952, ; 365: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 530
	i64 6362365112271840035, ; 366: NuGet.Protocol => 0x584ba95c404d2323 => 250
	i64 6397768165450447711, ; 367: es\Microsoft.CodeAnalysis.CSharp.resources => 0x58c9703fe8f9fb5f => 420
	i64 6400672600465831140, ; 368: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x58d3c1d1625774e4 => 449
	i64 6401687960814735282, ; 369: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 312
	i64 6405571018036478432, ; 370: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x58e528e7199a01e0 => 450
	i64 6433579551879206084, ; 371: fr\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x5948aa840ffa14c4 => 421
	i64 6471714727257221498, ; 372: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 503
	i64 6478287442656530074, ; 373: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 507
	i64 6501546733837973877, ; 374: id\Humanizer.resources => 0x5a3a224ec9037975 => 375
	i64 6504860066809920875, ; 375: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 287
	i64 6548213210057960872, ; 376: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 298
	i64 6554818985595797637, ; 377: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x5af76523736c8085 => 448
	i64 6557084851308642443, ; 378: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 343
	i64 6560151584539558821, ; 379: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 215
	i64 6584419190991186517, ; 380: NuGet.Versioning => 0x5b608e5e534b6a55 => 251
	i64 6589202984700901502, ; 381: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 348
	i64 6591971792923354531, ; 382: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 313
	i64 6602667871317180150, ; 383: nb\Humanizer.resources.dll => 0x5ba163724fbebef6 => 384
	i64 6608986621077214301, ; 384: nb-NO\Humanizer.resources.dll => 0x5bb7d650e29dd45d => 385
	i64 6617685658146568858, ; 385: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6642279005832796386, ; 386: tr\Microsoft.CodeAnalysis.Workspaces.resources => 0x5c2e1d9041b2d8e2 => 493
	i64 6662095722613742648, ; 387: ar\Humanizer.resources => 0x5c7484c32e0a9c38 => 358
	i64 6671798237668743565, ; 388: SkiaSharp => 0x5c96fd260152998d => 252
	i64 6673492278322518085, ; 389: tr\Microsoft.CodeAnalysis.resources.dll => 0x5c9d01de94b9d845 => 415
	i64 6713440830605852118, ; 390: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 391: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 392: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 515
	i64 6772837112740759457, ; 393: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6785756066475633138, ; 394: ja\Microsoft.CodeAnalysis.Features.resources => 0x5e2bd930a2bb69f2 => 462
	i64 6786606130239981554, ; 395: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 396: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6799665367296212282, ; 397: uk\Humanizer.resources => 0x5e5d43a019377d3a => 398
	i64 6800157191326250309, ; 398: Microsoft.CodeAnalysis.CSharp.Workspaces => 0x5e5f02efcdd1b545 => 190
	i64 6814185388980153342, ; 399: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6863477688097626297, ; 400: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x5f3ff897d2e0d8b9 => 494
	i64 6876862101832370452, ; 401: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6881674271711615136, ; 402: pl\Microsoft.CodeAnalysis.Workspaces.resources => 0x5f809e4a1950d8a0 => 490
	i64 6893780433488385105, ; 403: de\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x5faba0c7899d1451 => 484
	i64 6894844156784520562, ; 404: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6911517594278112275, ; 405: tr\Microsoft.CodeAnalysis.Features.resources => 0x5feaa4a219cf2c13 => 467
	i64 6916425539059316312, ; 406: de\Microsoft.CodeAnalysis.resources => 0x5ffc14620b11f658 => 406
	i64 6964286494529358928, ; 407: ku\Humanizer.resources => 0x60a61dab1c790c50 => 380
	i64 6985819478807084611, ; 408: uz-Cyrl-UZ\Humanizer.resources => 0x60f29dcdb34cfe43 => 399
	i64 7011053663211085209, ; 409: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 307
	i64 7060896174307865760, ; 410: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 411: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7089561094984850497, ; 412: pt-BR\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x62632e40f8005c41 => 478
	i64 7101497697220435230, ; 413: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 414: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 308
	i64 7105430439328552570, ; 415: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 270
	i64 7112547816752919026, ; 416: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7113371626429202782, ; 417: bg\Humanizer.resources.dll => 0x62b7c5ce54a7c15e => 360
	i64 7148515934569711863, ; 418: NuGet.Packaging.dll => 0x6334a15e373f48f7 => 248
	i64 7188876148444261747, ; 419: System.Composition.AttributedModel.dll => 0x63c404c4ca4c6d73 => 257
	i64 7192745174564810625, ; 420: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 277
	i64 7212896777207732725, ; 421: fa\Humanizer.resources.dll => 0x64195b673f06d9f5 => 367
	i64 7219616639871433054, ; 422: ja\Microsoft.CodeAnalysis.CSharp.resources => 0x64313b153209395e => 423
	i64 7270811800166795866, ; 423: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 424: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7304135784225337694, ; 425: fi-FI\Humanizer.resources => 0x655d80cbf9f8715e => 368
	i64 7314237870106916923, ; 426: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 255
	i64 7316205155833392065, ; 427: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 428: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 429: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 267
	i64 7349431895026339542, ; 430: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 276
	i64 7377312882064240630, ; 431: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7398281968956400768, ; 432: pl\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x66abfa40c3d2e480 => 438
	i64 7488575175965059935, ; 433: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 434: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 435: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 265
	i64 7507915030481126195, ; 436: zh-Hant\Microsoft.CodeAnalysis.Features.resources.dll => 0x683178f10ba4c333 => 469
	i64 7579876713893044336, ; 437: de\Microsoft.CodeAnalysis.Features.resources => 0x693121b61cd9a070 => 458
	i64 7592577537120840276, ; 438: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 439: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 440: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7659175115073460922, ; 441: de\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x6a4adb2fe6771aba => 432
	i64 7694110031107265897, ; 442: ru\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6ac6f84ee2eb1569 => 440
	i64 7694700312542370399, ; 443: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 444: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7723873813026311384, ; 445: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 254
	i64 7725404731275645577, ; 446: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 316
	i64 7735176074855944702, ; 447: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 448: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 351
	i64 7742555799473854801, ; 449: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 510
	i64 7791074099216502080, ; 450: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7800262899020527687, ; 451: pt\Humanizer.resources => 0x6c4019c772c6f847 => 388
	i64 7820441508502274321, ; 452: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 453: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 284
	i64 7874680181924468550, ; 454: Microsoft.CodeAnalysis.Elfie => 0x6d487be7536a9746 => 191
	i64 7877653024023762272, ; 455: Microsoft.CodeAnalysis.CSharp.Features => 0x6d530bb010b7d560 => 189
	i64 7882403529043535425, ; 456: fa\Humanizer.resources => 0x6d63ec3f34ece641 => 367
	i64 7927939710195668715, ; 457: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 253
	i64 7929771293765145963, ; 458: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x6e0c34fa5af6156b => 451
	i64 7940487153141724357, ; 459: es\Microsoft.CodeAnalysis.Features.resources => 0x6e3246feca90b4c5 => 459
	i64 7972383140441761405, ; 460: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 203
	i64 7975724199463739455, ; 461: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 521
	i64 8004654074791351515, ; 462: ko\Microsoft.CodeAnalysis.Workspaces.resources => 0x6f163e7875d254db => 489
	i64 8025517457475554965, ; 463: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 464: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8032882159747084140, ; 465: pl\Microsoft.CodeAnalysis.Features.resources => 0x6f7a87c3a64c2f6c => 464
	i64 8045853768902652843, ; 466: pt-BR\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x6fa89d5fc22e33ab => 426
	i64 8064050204834738623, ; 467: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 468: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 310
	i64 8085230611270010360, ; 469: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 470: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 471: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 472: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 512
	i64 8113615946733131500, ; 473: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8129655575090457984, ; 474: de\Microsoft.CodeAnalysis.Workspaces.resources => 0x70d256ac3b8a6d80 => 484
	i64 8148667116939980602, ; 475: pt-BR\Microsoft.CodeAnalysis.resources.dll => 0x7115e191c21d2f3a => 413
	i64 8167236081217502503, ; 476: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 477: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 478: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 355
	i64 8198475655723014119, ; 479: Microsoft.CodeAnalysis.CSharp.Features.dll => 0x71c6d62be70ed7e7 => 189
	i64 8234211087038226247, ; 480: de\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x7245cb5b607f1f47 => 419
	i64 8234598844743906698, ; 481: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 218
	i64 8246048515196606205, ; 482: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 230
	i64 8246804492189889837, ; 483: Microsoft.VisualStudio.Web.CodeGeneration => 0x727288fe0112f52d => 233
	i64 8264926008854159966, ; 484: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 485: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 486: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8327329536391025244, ; 487: bn-BD\Humanizer.resources.dll => 0x73909e17e034925c => 361
	i64 8361426872303202087, ; 488: fr\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x7409c1708b09af27 => 473
	i64 8368701292315763008, ; 489: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 490: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 527
	i64 8398329775253868912, ; 491: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 293
	i64 8400357532724379117, ; 492: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 325
	i64 8410671156615598628, ; 493: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 494: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 314
	i64 8442828414178614895, ; 495: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0x752af3b5eeb0de6f => 180
	i64 8453144032365170736, ; 496: Microsoft.Extensions.Identity.Stores.dll => 0x754f99b5f456d030 => 211
	i64 8476857680833348370, ; 497: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 272
	i64 8490820071440741817, ; 498: NuGet.Packaging => 0x75d573de61fb75b9 => 248
	i64 8513291706828295435, ; 499: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 232
	i64 8518412311883997971, ; 500: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 501: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8564067269325865571, ; 502: tr\Humanizer.resources => 0x76d9adce9cb7c263 => 397
	i64 8598790081731763592, ; 503: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 304
	i64 8601935802264776013, ; 504: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 337
	i64 8622798162740718334, ; 505: vi\Humanizer.resources.dll => 0x77aa553e540d2afe => 401
	i64 8623059219396073920, ; 506: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 507: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 508: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 509: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 324
	i64 8648495978913578441, ; 510: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 511: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 517
	i64 8684531736582871431, ; 512: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8691348873255390601, ; 513: el\Humanizer.resources.dll => 0x789ddfc061610d89 => 365
	i64 8725526185868997716, ; 514: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8747977504141423047, ; 515: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources => 0x79670f30f57531c7 => 429
	i64 8769779827360249665, ; 516: ko\Microsoft.CodeAnalysis.Features.resources.dll => 0x79b48449e831b741 => 463
	i64 8784689560710160013, ; 517: zh-Hant\Microsoft.CodeAnalysis.Workspaces.resources => 0x79e97c9cb8361e8d => 495
	i64 8853378295825400934, ; 518: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 352
	i64 8855637769374638964, ; 519: cs\Humanizer.resources.dll => 0x7ae58ba1cf1ba374 => 362
	i64 8918797492400444619, ; 520: dotnet-aspnet-codegenerator-design.dll => 0x7bc5ef10c62c54cb => 235
	i64 8932705878791833663, ; 521: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources => 0x7bf758ab546e483f => 491
	i64 8941376889969657626, ; 522: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 523: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 327
	i64 8954753533646919997, ; 524: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 525: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 217
	i64 8988527500359839366, ; 526: Mono.TextTemplating => 0x7cbdaa2368c72e86 => 241
	i64 9016366737383770868, ; 527: az\Humanizer.resources.dll => 0x7d2091c6e2684af4 => 359
	i64 9045785047181495996, ; 528: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 527
	i64 9052662452269567435, ; 529: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 222
	i64 9111603110219107042, ; 530: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 204
	i64 9138683372487561558, ; 531: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 532: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 199
	i64 9258038534689720297, ; 533: Microsoft.CodeAnalysis.Workspaces => 0x807b28ff010f07e9 => 195
	i64 9259143645429201038, ; 534: zh-CN\Humanizer.resources => 0x807f1616a61f788e => 402
	i64 9287191586081212215, ; 535: ru\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x80e2bb8ab95e0737 => 427
	i64 9312692141327339315, ; 536: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 342
	i64 9320828767200221179, ; 537: ko-KR\Humanizer.resources => 0x815a3c61413617fb => 379
	i64 9324707631942237306, ; 538: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 283
	i64 9363564275759486853, ; 539: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 501
	i64 9411968111718438806, ; 540: cs\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x829e072180481796 => 470
	i64 9427266486299436557, ; 541: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 221
	i64 9441911982924282715, ; 542: ms-MY\Humanizer.resources => 0x830868ec4eb4bb5b => 382
	i64 9467211876562491619, ; 543: zh-Hant\Microsoft.CodeAnalysis.resources.dll => 0x83624b0ad3ddd8e3 => 417
	i64 9468215723722196442, ; 544: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9500688326720985260, ; 545: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 202
	i64 9508211702228543126, ; 546: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x83f3f42aa08b6696 => 180
	i64 9551379474083066910, ; 547: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 525
	i64 9554839972845591462, ; 548: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 549: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 347
	i64 9584643793929893533, ; 550: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9606216591333276305, ; 551: es\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x8550231809e23a91 => 420
	i64 9659729154652888475, ; 552: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 553: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 554: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 555: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 294
	i64 9682672435579207921, ; 556: sv\Humanizer.resources => 0x865fc347772a40f1 => 395
	i64 9702891218465930390, ; 557: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9773637193738963987, ; 558: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 497
	i64 9776521250654317172, ; 559: tr\Microsoft.CodeAnalysis.Scripting.resources => 0x87ad2e477c4eea74 => 480
	i64 9780093022148426479, ; 560: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 344
	i64 9808614125178078768, ; 561: es\Microsoft.CodeAnalysis.Features.resources.dll => 0x881f32941e1e4630 => 459
	i64 9808709177481450983, ; 562: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9815966120248698980, ; 563: it\Microsoft.CodeAnalysis.resources => 0x8839512ddcb16864 => 409
	i64 9819168441846169364, ; 564: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 222
	i64 9825649861376906464, ; 565: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 291
	i64 9834056768316610435, ; 566: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 567: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864374015518639636, ; 568: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 179
	i64 9865124420436172353, ; 569: cs\Microsoft.CodeAnalysis.Scripting.resources => 0x88e7f66489211e41 => 470
	i64 9907349773706910547, ; 570: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 304
	i64 9933555792566666578, ; 571: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9954767608854229140, ; 572: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x8a267065cb523094 => 451
	i64 9956195530459977388, ; 573: Microsoft.Maui => 0x8a2b8315b36616ac => 228
	i64 9956796922710453736, ; 574: fr\Microsoft.CodeAnalysis.Features.resources => 0x8a2da60c3edbede8 => 460
	i64 9959489431142554298, ; 575: System.CodeDom => 0x8a3736deb7825aba => 256
	i64 9974604633896246661, ; 576: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10017511394021241210, ; 577: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 214
	i64 10038780035334861115, ; 578: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10049750028500509718, ; 579: cs\Microsoft.CodeAnalysis.Workspaces.resources => 0x8b77e267b23ea416 => 483
	i64 10051358222726253779, ; 580: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 581: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 582: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 583: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 226
	i64 10105485790837105934, ; 584: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10118064984325276963, ; 585: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x8c6a967ed506c523 => 452
	i64 10137402534451296909, ; 586: nb\Humanizer.resources => 0x8caf49e5131d3a8d => 384
	i64 10143853363526200146, ; 587: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 499
	i64 10209869394718195525, ; 588: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 515
	i64 10226222362177979215, ; 589: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 353
	i64 10229024438826829339, ; 590: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 298
	i64 10236703004850800690, ; 591: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 592: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 593: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 350
	i64 10347389959537838075, ; 594: ru\Microsoft.CodeAnalysis.resources => 0x8f9950586ab247fb => 414
	i64 10356409254419335618, ; 595: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x8fb95b58a63b89c2 => 453
	i64 10360651442923773544, ; 596: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 597: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 598: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 336
	i64 10389735884413426201, ; 599: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x902fc1bd5c975a19 => 447
	i64 10406448008575299332, ; 600: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 356
	i64 10426284384445314437, ; 601: es\Microsoft.CodeAnalysis.resources => 0x90b19a682610b585 => 407
	i64 10430153318873392755, ; 602: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 295
	i64 10447083246144586668, ; 603: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 183
	i64 10448061532586656644, ; 604: System.Composition.Convention.dll => 0x90fef89b91404384 => 258
	i64 10482770130019698767, ; 605: Microsoft.CodeAnalysis.Elfie.dll => 0x917a47e4a5e6484f => 191
	i64 10503238815856555353, ; 606: ko\Microsoft.CodeAnalysis.resources => 0x91c3000df2397559 => 411
	i64 10506226065143327199, ; 607: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 497
	i64 10546663366131771576, ; 608: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 609: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10594543503677136954, ; 610: it\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9307612f2e19203a => 422
	i64 10595762989148858956, ; 611: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 612: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10683527105087224481, ; 613: ja\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x9443834c5efb3aa1 => 436
	i64 10693597305048523572, ; 614: NuGet.ProjectModel.dll => 0x94674a17827de334 => 249
	i64 10714184849103829812, ; 615: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10735666205189739615, ; 616: zh-Hant\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x94fcbf889b80145f => 495
	i64 10750266327252719373, ; 617: ru\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x95309e446cbdd70d => 492
	i64 10761706286639228993, ; 618: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 529
	i64 10764062273958828890, ; 619: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x9561a19b937fdb5a => 448
	i64 10785150219063592792, ; 620: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10792377569642280590, ; 621: ko\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x95c63a38186bf68e => 424
	i64 10811915265162633087, ; 622: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 201
	i64 10822644899632537592, ; 623: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 624: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10831054960469279823, ; 625: da\Humanizer.resources.dll => 0x964fa319e581044f => 363
	i64 10839431236348706757, ; 626: Microsoft.VisualStudio.Web.CodeGeneration.Core => 0x966d654799d67fc5 => 234
	i64 10847732767863316357, ; 627: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 285
	i64 10881928253345575956, ; 628: de\Microsoft.CodeAnalysis.Scripting.resources => 0x970460176bf33414 => 471
	i64 10889380495983713167, ; 629: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 196
	i64 10899834349646441345, ; 630: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 631: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 632: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10972388274974066310, ; 633: Microsoft.AspNetCore.Razor.Language => 0x9845c1007b7d8686 => 182
	i64 10983330919203878381, ; 634: fr\Humanizer.resources.dll => 0x986ca14761b635ed => 369
	i64 10984851517705895286, ; 635: cs\Microsoft.CodeAnalysis.Features.resources.dll => 0x987208414f453d76 => 457
	i64 11002576679268595294, ; 636: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 213
	i64 11009005086950030778, ; 637: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 228
	i64 11019817191295005410, ; 638: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 282
	i64 11023048688141570732, ; 639: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 640: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11047101296015504039, ; 641: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 240
	i64 11067960147806077617, ; 642: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources => 0x99994b1d262942b1 => 482
	i64 11071824625609515081, ; 643: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 348
	i64 11103970607964515343, ; 644: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 508
	i64 11136029745144976707, ; 645: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 346
	i64 11147920560916108509, ; 646: ja\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x9ab55eaf99ad94dd => 488
	i64 11156122287428000958, ; 647: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 523
	i64 11157797727133427779, ; 648: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 504
	i64 11162124722117608902, ; 649: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 341
	i64 11188319605227840848, ; 650: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 651: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 511
	i64 11226290749488709958, ; 652: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 215
	i64 11235648312900863002, ; 653: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11283982282067550951, ; 654: zh-Hant\Humanizer.resources.dll => 0x9c98c219b67022e7 => 404
	i64 11310472084498560282, ; 655: it\Microsoft.CodeAnalysis.resources.dll => 0x9cf6de6f7682351a => 409
	i64 11322957309738927550, ; 656: mt\Humanizer.resources => 0x9d2339ae7de6c5be => 383
	i64 11329751333533450475, ; 657: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 658: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 297
	i64 11341245327015630248, ; 659: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 262
	i64 11347436699239206956, ; 660: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11360002426691694192, ; 661: cs\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9da6d604ea88ae70 => 418
	i64 11392833485892708388, ; 662: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 326
	i64 11432101114902388181, ; 663: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11443192662959930495, ; 664: es\Humanizer.resources.dll => 0x9ece63192c153c7f => 366
	i64 11446671985764974897, ; 665: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 666: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 667: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11506022881355894879, ; 668: it\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x9fad9ad95cbc105f => 474
	i64 11508496261504176197, ; 669: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 307
	i64 11513602507638267977, ; 670: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 266
	i64 11517440453979132662, ; 671: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 219
	i64 11518296021396496455, ; 672: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 509
	i64 11527137748606195310, ; 673: Mono.TextTemplating.dll => 0x9ff89eb57eab166e => 241
	i64 11529969570048099689, ; 674: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 341
	i64 11530120875411095857, ; 675: th-TH\Humanizer.resources.dll => 0xa00337d8d431c131 => 396
	i64 11530571088791430846, ; 676: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 212
	i64 11564861549255168062, ; 677: Microsoft.CodeAnalysis.dll => 0xa07ea44e47ed903e => 187
	i64 11580057168383206117, ; 678: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 280
	i64 11591352189662810718, ; 679: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 334
	i64 11597308262950669618, ; 680: Microsoft.Extensions.Identity.Core.dll => 0xa0f1ea6b83e08d32 => 210
	i64 11597940890313164233, ; 681: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11622657603305904499, ; 682: Microsoft.Extensions.Identity.Stores => 0xa14bf982bf0a9973 => 211
	i64 11672361001936329215, ; 683: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 308
	i64 11674412572205198830, ; 684: it\Microsoft.CodeAnalysis.Scripting.resources => 0xa203d86177a52dee => 474
	i64 11691353810037938030, ; 685: pl\Microsoft.CodeAnalysis.resources => 0xa2400858c6b8976e => 412
	i64 11692977985522001935, ; 686: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 687: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11733105267584923319, ; 688: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xa2d45d1382a9f6b7 => 442
	i64 11743665907891708234, ; 689: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11775736028400734260, ; 690: tr\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xa36bd186fd985034 => 480
	i64 11814896823651168648, ; 691: ro\Humanizer.resources.dll => 0xa3f6f210279e7188 => 389
	i64 11851835839753101194, ; 692: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 0xa47a2de70cba1f8a => 190
	i64 11855031688536399763, ; 693: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 526
	i64 11918619261036226777, ; 694: cs\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa5677112033168d9 => 483
	i64 11991047634523762324, ; 695: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 696: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 271
	i64 12040886584167504988, ; 697: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 698: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 699: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 700: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 701: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12123554842037000992, ; 702: tr\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa83f84e53e951b20 => 493
	i64 12131140937409964993, ; 703: ru\Microsoft.CodeAnalysis.Features.resources => 0xa85a7868b6852bc1 => 466
	i64 12137774235383566651, ; 704: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 338
	i64 12145679461940342714, ; 705: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 706: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 274
	i64 12198439281774268251, ; 707: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 223
	i64 12201331334810686224, ; 708: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 709: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 710: System.IO.Pipelines => 0xaae1de2e1c17f00a => 266
	i64 12332222936682028543, ; 711: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 712: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12405905830338390985, ; 713: ja\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xac2aa19f96446bc9 => 436
	i64 12439275739440478309, ; 714: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 220
	i64 12451044538927396471, ; 715: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 306
	i64 12466513435562512481, ; 716: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 320
	i64 12475113361194491050, ; 717: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 530
	i64 12487638416075308985, ; 718: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 300
	i64 12493213219680520345, ; 719: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 196
	i64 12517810545449516888, ; 720: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 721: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 288
	i64 12550732019250633519, ; 722: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12619191878741427339, ; 723: de\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xaf20602784e0848b => 445
	i64 12690486463116955105, ; 724: NuGet.Configuration.dll => 0xb01daa337cfd4de1 => 244
	i64 12699999919562409296, ; 725: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 726: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 289
	i64 12708238894395270091, ; 727: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 728: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 729: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12726057104018228727, ; 730: Microsoft.NET.StringTools => 0xb09c0982b457c5f7 => 231
	i64 12742166704152928552, ; 731: Microsoft.CodeAnalysis.Razor.dll => 0xb0d5451b45d86128 => 193
	i64 12753841065332862057, ; 732: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 343
	i64 12822330414412999099, ; 733: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources => 0xb1f2119387c629bb => 430
	i64 12828192437253469131, ; 734: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 354
	i64 12835242264250840079, ; 735: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12835543923467107475, ; 736: pt-BR\Microsoft.CodeAnalysis.resources => 0xb2210331592e3c93 => 413
	i64 12843321153144804894, ; 737: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 216
	i64 12843770487262409629, ; 738: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 739: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12860889322320594667, ; 740: dotnet-aspnet-codegenerator-design => 0xb27b0eb2e08886eb => 235
	i64 12963446364377008305, ; 741: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 264
	i64 12982280885948128408, ; 742: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 299
	i64 12989346753972519995, ; 743: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 496
	i64 12991459499837607210, ; 744: Microsoft.CodeAnalysis => 0xb44aef9559b1cd2a => 187
	i64 13005833372463390146, ; 745: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 517
	i64 13068258254871114833, ; 746: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13126023683090012938, ; 747: System.Composition.TypedParts.dll => 0xb62900febff1db0a => 261
	i64 13129914918964716986, ; 748: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 303
	i64 13161648197185303412, ; 749: ru\Microsoft.CodeAnalysis.Workspaces.resources => 0xb6a7914d4be3f374 => 492
	i64 13162471042547327635, ; 750: System.Security.Permissions => 0xb6aa7dace9662293 => 272
	i64 13166897321255124987, ; 751: ko\Microsoft.CodeAnalysis.CSharp.resources => 0xb6ba375a3b743ffb => 424
	i64 13173818576982874404, ; 752: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13184895541093799161, ; 753: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb6fa28a3578714f9 => 482
	i64 13191147902838114738, ; 754: it\Microsoft.CodeAnalysis.Features.resources.dll => 0xb7105f20c04e09b2 => 461
	i64 13204198774430501167, ; 755: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb73ebcd39594092f => 430
	i64 13219588054769624370, ; 756: es\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xb775694ba18a6532 => 433
	i64 13233222243778831259, ; 757: es\Microsoft.CodeAnalysis.Scripting.resources => 0xb7a5d984a23c239b => 472
	i64 13247471366635968436, ; 758: de\Microsoft.CodeAnalysis.resources.dll => 0xb7d87905147ed7b4 => 406
	i64 13252883958002779332, ; 759: NuGet.Common.dll => 0xb7ebb3be363a84c4 => 243
	i64 13257048157060802935, ; 760: Microsoft.Build.Framework => 0xb7fa7f0f5bdb2977 => 185
	i64 13262938754463820554, ; 761: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources => 0xb80f6c86f193eb0a => 494
	i64 13286676513096225245, ; 762: hu\Humanizer.resources.dll => 0xb863c1e490a051dd => 373
	i64 13292381562582072947, ; 763: pt-BR\Microsoft.CodeAnalysis.Features.resources.dll => 0xb878069ae8a7fe73 => 465
	i64 13310773016837059531, ; 764: cs\Microsoft.CodeAnalysis.resources.dll => 0xb8b95d890a6d73cb => 405
	i64 13313727712277001502, ; 765: ja\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb8c3dcd0ae8b751e => 475
	i64 13343850469010654401, ; 766: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 767: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 768: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 505
	i64 13401370062847626945, ; 769: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 338
	i64 13403416310143541304, ; 770: Microcharts.Droid => 0xba02801ea6c86038 => 177
	i64 13404347523447273790, ; 771: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 293
	i64 13431476299110033919, ; 772: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 773: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 349
	i64 13463706743370286408, ; 774: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 775: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 351
	i64 13491513212026656886, ; 776: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 286
	i64 13502641473732064860, ; 777: System.Composition.AttributedModel => 0xbb6304e15b41b65c => 257
	i64 13540124433173649601, ; 778: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 526
	i64 13553170703867477024, ; 779: Microsoft.CodeAnalysis.Scripting.dll => 0xbc1688f288407c20 => 194
	i64 13572454107664307259, ; 780: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 328
	i64 13577726035533356841, ; 781: sl\Humanizer.resources => 0xbc6dc5e43589df29 => 392
	i64 13578472628727169633, ; 782: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 783: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 784: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 299
	i64 13647894001087880694, ; 785: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 786: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 279
	i64 13702626353344114072, ; 787: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 788: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 789: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 790: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13730336804810551062, ; 791: el\Humanizer.resources => 0xbe8bf493d9346f16 => 365
	i64 13740961536386145404, ; 792: ru\Microsoft.CodeAnalysis.Features.resources.dll => 0xbeb1b3b6f09a1c7c => 466
	i64 13741908991377327229, ; 793: de\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xbeb5116b7ecac47d => 471
	i64 13742054908850494594, ; 794: Azure.Identity => 0xbeb596218df25c82 => 174
	i64 13751991022888427085, ; 795: pl\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xbed8e2f961a01e4d => 490
	i64 13754352728446157994, ; 796: ko\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xbee146eece7544aa => 489
	i64 13768883594457632599, ; 797: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13827721973044326179, ; 798: cs\Microsoft.CodeAnalysis.Features.resources => 0xbfe5efdf402baf23 => 457
	i64 13828521679616088467, ; 799: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 352
	i64 13864745339496195545, ; 800: Microsoft.CodeAnalysis.Workspaces.dll => 0xc069786d7dec65d9 => 195
	i64 13881769479078963060, ; 801: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 802: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 273
	i64 13911222732217019342, ; 803: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 804: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13939962644205322370, ; 805: Microsoft.AspNetCore.Razor.Language.dll => 0xc174b22af612c082 => 182
	i64 13955418299340266673, ; 806: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 209
	i64 13957763705375634936, ; 807: ru\Microsoft.CodeAnalysis.Scripting.resources => 0xc1b3f0237dc135f8 => 479
	i64 13959074834287824816, ; 808: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 306
	i64 14032333893230075068, ; 809: zh-Hant\Microsoft.CodeAnalysis.Features.resources => 0xc2bcdd5453a71cbc => 469
	i64 14075334701871371868, ; 810: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14084551984877988794, ; 811: nb-NO\Humanizer.resources => 0xc3766168372cebba => 385
	i64 14102632621176723282, ; 812: Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll => 0xc3b69da667131752 => 237
	i64 14108485179889227694, ; 813: sk\Humanizer.resources.dll => 0xc3cb68856a2917ae => 391
	i64 14124974489674258913, ; 814: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 288
	i64 14125464355221830302, ; 815: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 816: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 199
	i64 14147751692859242126, ; 817: ru\Humanizer.resources => 0xc456e934e74e768e => 390
	i64 14177026328031998476, ; 818: sk\Humanizer.resources => 0xc4beea550db5320c => 391
	i64 14178052285788134900, ; 819: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 275
	i64 14212104595480609394, ; 820: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 821: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 822: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 823: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 824: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14258050503687732042, ; 825: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xc5dec56405e2fb4a => 456
	i64 14261073672896646636, ; 826: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 326
	i64 14293202716295135330, ; 827: it\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xc65ba8244f6b8062 => 435
	i64 14298246716367104064, ; 828: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 829: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 830: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 831: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 276
	i64 14336022690333166993, ; 832: ko-KR\Humanizer.resources.dll => 0xc6f3c8ae6d3f8d91 => 379
	i64 14346402571976470310, ; 833: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 834: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 519
	i64 14388314743592357201, ; 835: he\Humanizer.resources.dll => 0xc7ad9006d8568d51 => 371
	i64 14461014870687870182, ; 836: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14461643095315121028, ; 837: it\Humanizer.resources => 0xc8b213c62cbd0384 => 377
	i64 14464374589798375073, ; 838: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 520
	i64 14486659737292545672, ; 839: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 311
	i64 14491877563792607819, ; 840: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 528
	i64 14495724990987328804, ; 841: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 329
	i64 14551742072151931844, ; 842: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14552901170081803662, ; 843: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 255
	i64 14558829797982847683, ; 844: pl\Microsoft.CodeAnalysis.resources.dll => 0xca0b5a90b623c2c3 => 412
	i64 14561513370130550166, ; 845: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14571600089685354543, ; 846: ja\Microsoft.CodeAnalysis.Features.resources.dll => 0xca38b913f2bee82f => 462
	i64 14574160591280636898, ; 847: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14603685918205544701, ; 848: es\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xcaaab6f80e0408fd => 485
	i64 14610046442689856844, ; 849: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 498
	i64 14622043554576106986, ; 850: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 851: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 321
	i64 14648804764802849406, ; 852: Azure.Identity.dll => 0xcb4b0252261f9a7e => 174
	i64 14669215534098758659, ; 853: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 207
	i64 14687496268954629644, ; 854: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xcbd47809f6ea760c => 454
	i64 14690985099581930927, ; 855: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 856: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 512
	i64 14715764521194861350, ; 857: fr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xcc38e5dd541db326 => 434
	i64 14734270797510799600, ; 858: ru\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xcc7aa5398e0af0f0 => 440
	i64 14735017007120366644, ; 859: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 511
	i64 14744092281598614090, ; 860: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 528
	i64 14792063746108907174, ; 861: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 349
	i64 14832630590065248058, ; 862: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 863: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 297
	i64 14889905118082851278, ; 864: GoogleGson.dll => 0xcea391d0969961ce => 175
	i64 14904040806490515477, ; 865: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 496
	i64 14912225920358050525, ; 866: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 867: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 868: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 208
	i64 14971762707707811983, ; 869: lv\Humanizer.resources.dll => 0xcfc662dbde5d588f => 381
	i64 14971923049666773358, ; 870: it\Microsoft.CodeAnalysis.Features.resources => 0xcfc6f4b063df016e => 461
	i64 14973015887391301737, ; 871: fr\Microsoft.CodeAnalysis.Scripting.resources => 0xcfcad69e803d2069 => 473
	i64 14984936317414011727, ; 872: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 873: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 874: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 300
	i64 15015154896917945444, ; 875: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 876: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 877: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 878: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 879: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 513
	i64 15115185479366240210, ; 880: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 881: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 882: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 219
	i64 15150743910298169673, ; 883: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 327
	i64 15195733091524337868, ; 884: ja\Microsoft.CodeAnalysis.resources => 0xd2e216bc7df4e0cc => 410
	i64 15203009853192377507, ; 885: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 518
	i64 15227001540531775957, ; 886: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 206
	i64 15234459843334988256, ; 887: ru\Humanizer.resources.dll => 0xd36bac830aef61e0 => 390
	i64 15234786388537674379, ; 888: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15240486395757881428, ; 889: ja\Humanizer.resources => 0xd38115a11f526854 => 378
	i64 15250465174479574862, ; 890: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 891: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 290
	i64 15279429628684179188, ; 892: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 355
	i64 15299439993936780255, ; 893: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15300862763834473199, ; 894: System.Composition.Hosting.dll => 0xd457959dc35afaef => 259
	i64 15338463749992804988, ; 895: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15352427450275134006, ; 896: System.Composition.Runtime.dll => 0xd50ec76ce59afa36 => 260
	i64 15370334346939861994, ; 897: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 295
	i64 15383240894167415497, ; 898: System.Memory.Data => 0xd57c4016df1c7ac9 => 267
	i64 15391712275433856905, ; 899: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 208
	i64 15471025662701294488, ; 900: Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll => 0xd6b41fdf08435398 => 238
	i64 15475196252089753159, ; 901: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 263
	i64 15526743539506359484, ; 902: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 903: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 904: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 905: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 500
	i64 15541854775306130054, ; 906: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 907: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 908: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 319
	i64 15609085926864131306, ; 909: System.dll => 0xd89e9cf3334914ea => 164
	i64 15620595871140898079, ; 910: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 209
	i64 15661133872274321916, ; 911: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 912: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15755368083429170162, ; 913: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 914: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 333
	i64 15783653065526199428, ; 915: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 501
	i64 15817206913877585035, ; 916: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 917: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15878195890548581965, ; 918: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xdc5aaf094237264d => 455
	i64 15885744048853936810, ; 919: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 920: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 225
	i64 15934062614519587357, ; 921: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 922: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 923: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15964926172722689846, ; 924: hu\Humanizer.resources => 0xdd8ecfc4ae78f736 => 373
	i64 15971679995444160383, ; 925: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 15988046219977098995, ; 926: id\Humanizer.resources.dll => 0xdde0f3542a4306f3 => 375
	i64 16018552496348375205, ; 927: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 928: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 929: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 520
	i64 16107572299479706728, ; 930: pt\Humanizer.resources.dll => 0xdf8997aa3068ec68 => 388
	i64 16148621927384773086, ; 931: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xe01b6e1579da71de => 444
	i64 16154507427712707110, ; 932: System => 0xe03056ea4e39aa26 => 164
	i64 16185160156379463841, ; 933: sl\Humanizer.resources.dll => 0xe09d3d68d9cdc0a1 => 392
	i64 16219561732052121626, ; 934: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16270510675159710935, ; 935: ja\Microsoft.CodeAnalysis.resources.dll => 0xe1cc774113187cd7 => 410
	i64 16287915403742224639, ; 936: it\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xe20a4cc33bab20ff => 487
	i64 16288847719894691167, ; 937: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 514
	i64 16313030114241086891, ; 938: ja\Microsoft.CodeAnalysis.Scripting.resources => 0xe2638675719705ab => 475
	i64 16315482530584035869, ; 939: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 940: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 213
	i64 16324796876805858114, ; 941: SkiaSharp.dll => 0xe28d5444586b6342 => 252
	i64 16337011941688632206, ; 942: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 943: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 305
	i64 16404675382673142372, ; 944: uz-Latn-UZ\Humanizer.resources.dll => 0xe3a91d5847d3f264 => 400
	i64 16416586957282382396, ; 945: ko\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xe3d36edbdd20923c => 476
	i64 16423015068819898779, ; 946: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 354
	i64 16454459195343277943, ; 947: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 948: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16533548349183570019, ; 949: NuGet.Common => 0xe572f6a005d53063 => 243
	i64 16558294117798643464, ; 950: uz-Latn-UZ\Humanizer.resources => 0xe5cae0c541d40708 => 400
	i64 16573490312900569789, ; 951: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xe600dda124d0eabd => 429
	i64 16582434033142728747, ; 952: Microsoft.NET.StringTools.dll => 0xe620a3e548d2082b => 231
	i64 16587349424426152616, ; 953: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xe6321a6b003372a8 => 481
	i64 16589693266713801121, ; 954: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 318
	i64 16621146507174665210, ; 955: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 292
	i64 16626488797933785693, ; 956: pt-BR\Microsoft.CodeAnalysis.Features.resources => 0xe6bd277886dad25d => 465
	i64 16643194905613199096, ; 957: System.Composition.Runtime => 0xe6f8819654aa66f8 => 260
	i64 16649148416072044166, ; 958: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 230
	i64 16677317093839702854, ; 959: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 325
	i64 16702652415771857902, ; 960: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 961: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 962: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 963: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 964: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 965: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16783012334401147854, ; 966: af\Humanizer.resources => 0xe8e93ccc44fad3ce => 357
	i64 16803648858859583026, ; 967: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 513
	i64 16817690021300390726, ; 968: fr\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xe9646ff86e3dcb46 => 434
	i64 16822611501064131242, ; 969: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 970: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 971: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16884536815023549305, ; 972: bn-BD\Humanizer.resources => 0xea51ecc6707beb79 => 361
	i64 16890310621557459193, ; 973: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16899091755757876651, ; 974: he\Humanizer.resources => 0xea85a26aa8ae35ab => 371
	i64 16933958494752847024, ; 975: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 976: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 521
	i64 16945858842201062480, ; 977: Azure.Core => 0xeb2bc8d57f4e7c50 => 173
	i64 16956605162877593346, ; 978: fr-BE\Humanizer.resources.dll => 0xeb51f68e41dfa702 => 370
	i64 16977952268158210142, ; 979: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16987813465531077541, ; 980: fi-FI\Humanizer.resources.dll => 0xebc0d6577393d3a5 => 368
	i64 16989020923549080504, ; 981: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 318
	i64 16998075588627545693, ; 982: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 323
	i64 17008137082415910100, ; 983: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 984: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 281
	i64 17031295164305207763, ; 985: Microsoft.CodeAnalysis.Features => 0xec5b50b75d3d71d3 => 192
	i64 17031351772568316411, ; 986: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 322
	i64 17037200463775726619, ; 987: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 309
	i64 17039544999576254074, ; 988: Microsoft.CodeAnalysis.AnalyzerUtilities => 0xec789fe5d206b67a => 186
	i64 17062143951396181894, ; 989: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17118171214553292978, ; 990: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17137864900836977098, ; 991: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 224
	i64 17164834558324733651, ; 992: is\Humanizer.resources.dll => 0xee35be166d4b76d3 => 376
	i64 17187273293601214786, ; 993: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 994: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 218
	i64 17201328579425343169, ; 995: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 996: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 997: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 516
	i64 17230721278011714856, ; 998: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 999: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 1000: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17310278548634113468, ; 1001: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 506
	i64 17333249706306540043, ; 1002: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 1003: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 1004: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 506
	i64 17360349973592121190, ; 1005: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 347
	i64 17371436720558481852, ; 1006: System.Runtime.Caching => 0xf113bda8d710a1bc => 269
	i64 17373701575325078811, ; 1007: nl\Humanizer.resources => 0xf11bc9886ee5551b => 386
	i64 17470386307322966175, ; 1008: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 1009: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 1010: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 504
	i64 17522591619082469157, ; 1011: GoogleGson => 0xf32cc03d27a5bf25 => 175
	i64 17523946658117960076, ; 1012: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 271
	i64 17540901887276648245, ; 1013: zh-Hans\Humanizer.resources.dll => 0xf36dcd54af1a8735 => 403
	i64 17565043795550961167, ; 1014: pl\Microsoft.CodeAnalysis.Scripting.resources => 0xf3c39244b9fe7e0f => 477
	i64 17586418995763329665, ; 1015: pl\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf40f82e659a7ba81 => 425
	i64 17590473451926037903, ; 1016: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 274
	i64 17623389608345532001, ; 1017: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 516
	i64 17627500474728259406, ; 1018: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17668140706752364209, ; 1019: Microsoft.DiaSymReader => 0xf531d85ceb97feb1 => 197
	i64 17671790519499593115, ; 1020: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 253
	i64 17685921127322830888, ; 1021: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17696897804768271485, ; 1022: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xf59802ca8f9a5c7d => 455
	i64 17704177640604968747, ; 1023: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 320
	i64 17710060891934109755, ; 1024: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 317
	i64 17712670374920797664, ; 1025: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17743407583038752114, ; 1026: System.CodeDom.dll => 0xf63d3f302bff4572 => 256
	i64 17777860260071588075, ; 1027: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 1028: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 221
	i64 17798314319870884251, ; 1029: zh-Hans\Microsoft.CodeAnalysis.resources.dll => 0xf70050930ca6f99b => 416
	i64 17827813215687577648, ; 1030: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 507
	i64 17836660441126018656, ; 1031: ja\Humanizer.resources.dll => 0xf7888c2b24941e60 => 378
	i64 17838668724098252521, ; 1032: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17882545204693222992, ; 1033: tr\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf82b901e2d9ac650 => 428
	i64 17891337867145587222, ; 1034: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 350
	i64 17910264068556501837, ; 1035: Microsoft.Extensions.Identity.Core => 0xf88e0a4717c0b34d => 210
	i64 17922362651809318980, ; 1036: de\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xf8b905e004d28844 => 445
	i64 17928294245072900555, ; 1037: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 1038: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 500
	i64 17992315986609351877, ; 1039: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 17992626610390966489, ; 1040: ko\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xf9b2a692b89820d9 => 437
	i64 18017743553296241350, ; 1041: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 203
	i64 18025913125965088385, ; 1042: System.Threading => 0xfa28e87b91334681 => 148
	i64 18116111925905154859, ; 1043: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 286
	i64 18121036031235206392, ; 1044: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 322
	i64 18146411883821974900, ; 1045: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 1046: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18190621259184097416, ; 1047: cs\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xfc7211a83d564888 => 431
	i64 18203743254473369877, ; 1048: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 270
	i64 18225059387460068507, ; 1049: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 1050: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 1051: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 303
	i64 18289698835141844372, ; 1052: Microsoft.CodeAnalysis.AnalyzerUtilities.dll => 0xfdd2103005815d94 => 186
	i64 18305135509493619199, ; 1053: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 324
	i64 18318849532986632368, ; 1054: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 1055: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 510
	i64 18338427488326303160, ; 1056: NuGet.LibraryModel => 0xfe7f2ea3b4f2bdb8 => 247
	i64 18342408478508122430, ; 1057: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 509
	i64 18358161419737137786, ; 1058: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 505
	i64 18365503706650766700, ; 1059: ar\Humanizer.resources.dll => 0xfedf60510c09ed6c => 358
	i64 18380184030268848184, ; 1060: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 340
	i64 18439108438687598470 ; 1061: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1062 x i32] [
	i32 302, ; 0
	i32 362, ; 1
	i32 360, ; 2
	i32 216, ; 3
	i32 171, ; 4
	i32 229, ; 5
	i32 447, ; 6
	i32 177, ; 7
	i32 176, ; 8
	i32 58, ; 9
	i32 289, ; 10
	i32 446, ; 11
	i32 151, ; 12
	i32 330, ; 13
	i32 247, ; 14
	i32 333, ; 15
	i32 402, ; 16
	i32 296, ; 17
	i32 414, ; 18
	i32 132, ; 19
	i32 193, ; 20
	i32 433, ; 21
	i32 56, ; 22
	i32 332, ; 23
	i32 485, ; 24
	i32 431, ; 25
	i32 249, ; 26
	i32 95, ; 27
	i32 376, ; 28
	i32 188, ; 29
	i32 315, ; 30
	i32 0, ; 31
	i32 129, ; 32
	i32 217, ; 33
	i32 264, ; 34
	i32 443, ; 35
	i32 401, ; 36
	i32 246, ; 37
	i32 239, ; 38
	i32 145, ; 39
	i32 393, ; 40
	i32 382, ; 41
	i32 290, ; 42
	i32 18, ; 43
	i32 508, ; 44
	i32 456, ; 45
	i32 301, ; 46
	i32 316, ; 47
	i32 185, ; 48
	i32 468, ; 49
	i32 232, ; 50
	i32 150, ; 51
	i32 104, ; 52
	i32 418, ; 53
	i32 95, ; 54
	i32 245, ; 55
	i32 398, ; 56
	i32 173, ; 57
	i32 345, ; 58
	i32 423, ; 59
	i32 487, ; 60
	i32 36, ; 61
	i32 202, ; 62
	i32 0, ; 63
	i32 28, ; 64
	i32 285, ; 65
	i32 237, ; 66
	i32 323, ; 67
	i32 50, ; 68
	i32 178, ; 69
	i32 115, ; 70
	i32 70, ; 71
	i32 432, ; 72
	i32 226, ; 73
	i32 422, ; 74
	i32 65, ; 75
	i32 170, ; 76
	i32 145, ; 77
	i32 344, ; 78
	i32 417, ; 79
	i32 251, ; 80
	i32 435, ; 81
	i32 284, ; 82
	i32 319, ; 83
	i32 309, ; 84
	i32 179, ; 85
	i32 40, ; 86
	i32 452, ; 87
	i32 89, ; 88
	i32 81, ; 89
	i32 242, ; 90
	i32 66, ; 91
	i32 441, ; 92
	i32 62, ; 93
	i32 86, ; 94
	i32 283, ; 95
	i32 106, ; 96
	i32 502, ; 97
	i32 330, ; 98
	i32 102, ; 99
	i32 183, ; 100
	i32 35, ; 101
	i32 280, ; 102
	i32 524, ; 103
	i32 332, ; 104
	i32 227, ; 105
	i32 419, ; 106
	i32 486, ; 107
	i32 188, ; 108
	i32 119, ; 109
	i32 317, ; 110
	i32 438, ; 111
	i32 142, ; 112
	i32 141, ; 113
	i32 353, ; 114
	i32 236, ; 115
	i32 192, ; 116
	i32 53, ; 117
	i32 35, ; 118
	i32 141, ; 119
	i32 242, ; 120
	i32 277, ; 121
	i32 287, ; 122
	i32 446, ; 123
	i32 200, ; 124
	i32 214, ; 125
	i32 428, ; 126
	i32 301, ; 127
	i32 268, ; 128
	i32 491, ; 129
	i32 8, ; 130
	i32 14, ; 131
	i32 329, ; 132
	i32 51, ; 133
	i32 223, ; 134
	i32 405, ; 135
	i32 312, ; 136
	i32 136, ; 137
	i32 101, ; 138
	i32 399, ; 139
	i32 198, ; 140
	i32 238, ; 141
	i32 377, ; 142
	i32 246, ; 143
	i32 294, ; 144
	i32 339, ; 145
	i32 116, ; 146
	i32 408, ; 147
	i32 278, ; 148
	i32 269, ; 149
	i32 404, ; 150
	i32 163, ; 151
	i32 523, ; 152
	i32 181, ; 153
	i32 224, ; 154
	i32 166, ; 155
	i32 67, ; 156
	i32 207, ; 157
	i32 498, ; 158
	i32 258, ; 159
	i32 80, ; 160
	i32 363, ; 161
	i32 372, ; 162
	i32 477, ; 163
	i32 101, ; 164
	i32 334, ; 165
	i32 220, ; 166
	i32 117, ; 167
	i32 261, ; 168
	i32 262, ; 169
	i32 481, ; 170
	i32 503, ; 171
	i32 346, ; 172
	i32 364, ; 173
	i32 184, ; 174
	i32 394, ; 175
	i32 443, ; 176
	i32 184, ; 177
	i32 411, ; 178
	i32 78, ; 179
	i32 345, ; 180
	i32 114, ; 181
	i32 121, ; 182
	i32 178, ; 183
	i32 48, ; 184
	i32 234, ; 185
	i32 381, ; 186
	i32 439, ; 187
	i32 403, ; 188
	i32 240, ; 189
	i32 176, ; 190
	i32 464, ; 191
	i32 415, ; 192
	i32 128, ; 193
	i32 450, ; 194
	i32 310, ; 195
	i32 369, ; 196
	i32 359, ; 197
	i32 281, ; 198
	i32 82, ; 199
	i32 110, ; 200
	i32 75, ; 201
	i32 356, ; 202
	i32 236, ; 203
	i32 265, ; 204
	i32 254, ; 205
	i32 229, ; 206
	i32 53, ; 207
	i32 245, ; 208
	i32 336, ; 209
	i32 205, ; 210
	i32 69, ; 211
	i32 372, ; 212
	i32 357, ; 213
	i32 335, ; 214
	i32 204, ; 215
	i32 83, ; 216
	i32 172, ; 217
	i32 518, ; 218
	i32 116, ; 219
	i32 366, ; 220
	i32 397, ; 221
	i32 206, ; 222
	i32 156, ; 223
	i32 205, ; 224
	i32 275, ; 225
	i32 167, ; 226
	i32 328, ; 227
	i32 302, ; 228
	i32 374, ; 229
	i32 383, ; 230
	i32 468, ; 231
	i32 212, ; 232
	i32 32, ; 233
	i32 227, ; 234
	i32 122, ; 235
	i32 72, ; 236
	i32 62, ; 237
	i32 259, ; 238
	i32 161, ; 239
	i32 113, ; 240
	i32 374, ; 241
	i32 194, ; 242
	i32 499, ; 243
	i32 88, ; 244
	i32 225, ; 245
	i32 387, ; 246
	i32 529, ; 247
	i32 472, ; 248
	i32 105, ; 249
	i32 18, ; 250
	i32 478, ; 251
	i32 146, ; 252
	i32 118, ; 253
	i32 58, ; 254
	i32 296, ; 255
	i32 442, ; 256
	i32 17, ; 257
	i32 52, ; 258
	i32 386, ; 259
	i32 407, ; 260
	i32 92, ; 261
	i32 479, ; 262
	i32 263, ; 263
	i32 198, ; 264
	i32 524, ; 265
	i32 444, ; 266
	i32 55, ; 267
	i32 467, ; 268
	i32 129, ; 269
	i32 395, ; 270
	i32 152, ; 271
	i32 41, ; 272
	i32 370, ; 273
	i32 201, ; 274
	i32 92, ; 275
	i32 441, ; 276
	i32 200, ; 277
	i32 408, ; 278
	i32 340, ; 279
	i32 268, ; 280
	i32 393, ; 281
	i32 181, ; 282
	i32 50, ; 283
	i32 162, ; 284
	i32 486, ; 285
	i32 13, ; 286
	i32 314, ; 287
	i32 364, ; 288
	i32 453, ; 289
	i32 278, ; 290
	i32 335, ; 291
	i32 36, ; 292
	i32 67, ; 293
	i32 394, ; 294
	i32 389, ; 295
	i32 233, ; 296
	i32 109, ; 297
	i32 514, ; 298
	i32 522, ; 299
	i32 279, ; 300
	i32 439, ; 301
	i32 99, ; 302
	i32 416, ; 303
	i32 99, ; 304
	i32 488, ; 305
	i32 11, ; 306
	i32 427, ; 307
	i32 387, ; 308
	i32 11, ; 309
	i32 321, ; 310
	i32 25, ; 311
	i32 128, ; 312
	i32 76, ; 313
	i32 313, ; 314
	i32 109, ; 315
	i32 463, ; 316
	i32 460, ; 317
	i32 339, ; 318
	i32 337, ; 319
	i32 106, ; 320
	i32 2, ; 321
	i32 396, ; 322
	i32 26, ; 323
	i32 292, ; 324
	i32 157, ; 325
	i32 522, ; 326
	i32 250, ; 327
	i32 273, ; 328
	i32 21, ; 329
	i32 525, ; 330
	i32 49, ; 331
	i32 458, ; 332
	i32 43, ; 333
	i32 126, ; 334
	i32 282, ; 335
	i32 421, ; 336
	i32 59, ; 337
	i32 119, ; 338
	i32 380, ; 339
	i32 342, ; 340
	i32 425, ; 341
	i32 244, ; 342
	i32 305, ; 343
	i32 291, ; 344
	i32 3, ; 345
	i32 239, ; 346
	i32 311, ; 347
	i32 331, ; 348
	i32 38, ; 349
	i32 426, ; 350
	i32 124, ; 351
	i32 197, ; 352
	i32 476, ; 353
	i32 437, ; 354
	i32 449, ; 355
	i32 454, ; 356
	i32 331, ; 357
	i32 519, ; 358
	i32 137, ; 359
	i32 149, ; 360
	i32 85, ; 361
	i32 90, ; 362
	i32 502, ; 363
	i32 315, ; 364
	i32 530, ; 365
	i32 250, ; 366
	i32 420, ; 367
	i32 449, ; 368
	i32 312, ; 369
	i32 450, ; 370
	i32 421, ; 371
	i32 503, ; 372
	i32 507, ; 373
	i32 375, ; 374
	i32 287, ; 375
	i32 298, ; 376
	i32 448, ; 377
	i32 343, ; 378
	i32 215, ; 379
	i32 251, ; 380
	i32 348, ; 381
	i32 313, ; 382
	i32 384, ; 383
	i32 385, ; 384
	i32 133, ; 385
	i32 493, ; 386
	i32 358, ; 387
	i32 252, ; 388
	i32 415, ; 389
	i32 96, ; 390
	i32 3, ; 391
	i32 515, ; 392
	i32 105, ; 393
	i32 462, ; 394
	i32 33, ; 395
	i32 154, ; 396
	i32 398, ; 397
	i32 190, ; 398
	i32 158, ; 399
	i32 494, ; 400
	i32 155, ; 401
	i32 490, ; 402
	i32 484, ; 403
	i32 82, ; 404
	i32 467, ; 405
	i32 406, ; 406
	i32 380, ; 407
	i32 399, ; 408
	i32 307, ; 409
	i32 143, ; 410
	i32 87, ; 411
	i32 478, ; 412
	i32 19, ; 413
	i32 308, ; 414
	i32 270, ; 415
	i32 51, ; 416
	i32 360, ; 417
	i32 248, ; 418
	i32 257, ; 419
	i32 277, ; 420
	i32 367, ; 421
	i32 423, ; 422
	i32 61, ; 423
	i32 54, ; 424
	i32 368, ; 425
	i32 255, ; 426
	i32 4, ; 427
	i32 97, ; 428
	i32 267, ; 429
	i32 276, ; 430
	i32 17, ; 431
	i32 438, ; 432
	i32 155, ; 433
	i32 84, ; 434
	i32 265, ; 435
	i32 469, ; 436
	i32 458, ; 437
	i32 29, ; 438
	i32 45, ; 439
	i32 64, ; 440
	i32 432, ; 441
	i32 440, ; 442
	i32 66, ; 443
	i32 172, ; 444
	i32 254, ; 445
	i32 316, ; 446
	i32 1, ; 447
	i32 351, ; 448
	i32 510, ; 449
	i32 47, ; 450
	i32 388, ; 451
	i32 24, ; 452
	i32 284, ; 453
	i32 191, ; 454
	i32 189, ; 455
	i32 367, ; 456
	i32 253, ; 457
	i32 451, ; 458
	i32 459, ; 459
	i32 203, ; 460
	i32 521, ; 461
	i32 489, ; 462
	i32 165, ; 463
	i32 108, ; 464
	i32 464, ; 465
	i32 426, ; 466
	i32 12, ; 467
	i32 310, ; 468
	i32 63, ; 469
	i32 27, ; 470
	i32 23, ; 471
	i32 512, ; 472
	i32 93, ; 473
	i32 484, ; 474
	i32 413, ; 475
	i32 168, ; 476
	i32 12, ; 477
	i32 355, ; 478
	i32 189, ; 479
	i32 419, ; 480
	i32 218, ; 481
	i32 230, ; 482
	i32 233, ; 483
	i32 29, ; 484
	i32 103, ; 485
	i32 14, ; 486
	i32 361, ; 487
	i32 473, ; 488
	i32 126, ; 489
	i32 527, ; 490
	i32 293, ; 491
	i32 325, ; 492
	i32 91, ; 493
	i32 314, ; 494
	i32 180, ; 495
	i32 211, ; 496
	i32 272, ; 497
	i32 248, ; 498
	i32 232, ; 499
	i32 9, ; 500
	i32 86, ; 501
	i32 397, ; 502
	i32 304, ; 503
	i32 337, ; 504
	i32 401, ; 505
	i32 71, ; 506
	i32 168, ; 507
	i32 1, ; 508
	i32 324, ; 509
	i32 5, ; 510
	i32 517, ; 511
	i32 44, ; 512
	i32 365, ; 513
	i32 27, ; 514
	i32 429, ; 515
	i32 463, ; 516
	i32 495, ; 517
	i32 352, ; 518
	i32 362, ; 519
	i32 235, ; 520
	i32 491, ; 521
	i32 158, ; 522
	i32 327, ; 523
	i32 112, ; 524
	i32 217, ; 525
	i32 241, ; 526
	i32 359, ; 527
	i32 527, ; 528
	i32 222, ; 529
	i32 204, ; 530
	i32 121, ; 531
	i32 199, ; 532
	i32 195, ; 533
	i32 402, ; 534
	i32 427, ; 535
	i32 342, ; 536
	i32 379, ; 537
	i32 283, ; 538
	i32 501, ; 539
	i32 470, ; 540
	i32 221, ; 541
	i32 382, ; 542
	i32 417, ; 543
	i32 159, ; 544
	i32 202, ; 545
	i32 180, ; 546
	i32 525, ; 547
	i32 131, ; 548
	i32 347, ; 549
	i32 57, ; 550
	i32 420, ; 551
	i32 138, ; 552
	i32 83, ; 553
	i32 30, ; 554
	i32 294, ; 555
	i32 395, ; 556
	i32 10, ; 557
	i32 497, ; 558
	i32 480, ; 559
	i32 344, ; 560
	i32 459, ; 561
	i32 171, ; 562
	i32 409, ; 563
	i32 222, ; 564
	i32 291, ; 565
	i32 150, ; 566
	i32 94, ; 567
	i32 179, ; 568
	i32 470, ; 569
	i32 304, ; 570
	i32 60, ; 571
	i32 451, ; 572
	i32 228, ; 573
	i32 460, ; 574
	i32 256, ; 575
	i32 157, ; 576
	i32 214, ; 577
	i32 64, ; 578
	i32 483, ; 579
	i32 88, ; 580
	i32 79, ; 581
	i32 47, ; 582
	i32 226, ; 583
	i32 143, ; 584
	i32 452, ; 585
	i32 384, ; 586
	i32 499, ; 587
	i32 515, ; 588
	i32 353, ; 589
	i32 298, ; 590
	i32 74, ; 591
	i32 91, ; 592
	i32 350, ; 593
	i32 414, ; 594
	i32 453, ; 595
	i32 135, ; 596
	i32 90, ; 597
	i32 336, ; 598
	i32 447, ; 599
	i32 356, ; 600
	i32 407, ; 601
	i32 295, ; 602
	i32 183, ; 603
	i32 258, ; 604
	i32 191, ; 605
	i32 411, ; 606
	i32 497, ; 607
	i32 112, ; 608
	i32 42, ; 609
	i32 422, ; 610
	i32 159, ; 611
	i32 4, ; 612
	i32 436, ; 613
	i32 249, ; 614
	i32 103, ; 615
	i32 495, ; 616
	i32 492, ; 617
	i32 529, ; 618
	i32 448, ; 619
	i32 70, ; 620
	i32 424, ; 621
	i32 201, ; 622
	i32 60, ; 623
	i32 39, ; 624
	i32 363, ; 625
	i32 234, ; 626
	i32 285, ; 627
	i32 471, ; 628
	i32 196, ; 629
	i32 153, ; 630
	i32 56, ; 631
	i32 34, ; 632
	i32 182, ; 633
	i32 369, ; 634
	i32 457, ; 635
	i32 213, ; 636
	i32 228, ; 637
	i32 282, ; 638
	i32 21, ; 639
	i32 163, ; 640
	i32 240, ; 641
	i32 482, ; 642
	i32 348, ; 643
	i32 508, ; 644
	i32 346, ; 645
	i32 488, ; 646
	i32 523, ; 647
	i32 504, ; 648
	i32 341, ; 649
	i32 140, ; 650
	i32 511, ; 651
	i32 215, ; 652
	i32 89, ; 653
	i32 404, ; 654
	i32 409, ; 655
	i32 383, ; 656
	i32 147, ; 657
	i32 297, ; 658
	i32 262, ; 659
	i32 162, ; 660
	i32 418, ; 661
	i32 326, ; 662
	i32 6, ; 663
	i32 366, ; 664
	i32 169, ; 665
	i32 31, ; 666
	i32 107, ; 667
	i32 474, ; 668
	i32 307, ; 669
	i32 266, ; 670
	i32 219, ; 671
	i32 509, ; 672
	i32 241, ; 673
	i32 341, ; 674
	i32 396, ; 675
	i32 212, ; 676
	i32 187, ; 677
	i32 280, ; 678
	i32 334, ; 679
	i32 210, ; 680
	i32 167, ; 681
	i32 211, ; 682
	i32 308, ; 683
	i32 474, ; 684
	i32 412, ; 685
	i32 140, ; 686
	i32 59, ; 687
	i32 442, ; 688
	i32 144, ; 689
	i32 480, ; 690
	i32 389, ; 691
	i32 190, ; 692
	i32 526, ; 693
	i32 483, ; 694
	i32 81, ; 695
	i32 271, ; 696
	i32 74, ; 697
	i32 130, ; 698
	i32 25, ; 699
	i32 7, ; 700
	i32 93, ; 701
	i32 493, ; 702
	i32 466, ; 703
	i32 338, ; 704
	i32 137, ; 705
	i32 274, ; 706
	i32 223, ; 707
	i32 113, ; 708
	i32 9, ; 709
	i32 266, ; 710
	i32 104, ; 711
	i32 19, ; 712
	i32 436, ; 713
	i32 220, ; 714
	i32 306, ; 715
	i32 320, ; 716
	i32 530, ; 717
	i32 300, ; 718
	i32 196, ; 719
	i32 33, ; 720
	i32 288, ; 721
	i32 46, ; 722
	i32 445, ; 723
	i32 244, ; 724
	i32 30, ; 725
	i32 289, ; 726
	i32 57, ; 727
	i32 134, ; 728
	i32 114, ; 729
	i32 231, ; 730
	i32 193, ; 731
	i32 343, ; 732
	i32 430, ; 733
	i32 354, ; 734
	i32 55, ; 735
	i32 413, ; 736
	i32 216, ; 737
	i32 6, ; 738
	i32 77, ; 739
	i32 235, ; 740
	i32 264, ; 741
	i32 299, ; 742
	i32 496, ; 743
	i32 187, ; 744
	i32 517, ; 745
	i32 111, ; 746
	i32 261, ; 747
	i32 303, ; 748
	i32 492, ; 749
	i32 272, ; 750
	i32 424, ; 751
	i32 102, ; 752
	i32 482, ; 753
	i32 461, ; 754
	i32 430, ; 755
	i32 433, ; 756
	i32 472, ; 757
	i32 406, ; 758
	i32 243, ; 759
	i32 185, ; 760
	i32 494, ; 761
	i32 373, ; 762
	i32 465, ; 763
	i32 405, ; 764
	i32 475, ; 765
	i32 170, ; 766
	i32 115, ; 767
	i32 505, ; 768
	i32 338, ; 769
	i32 177, ; 770
	i32 293, ; 771
	i32 76, ; 772
	i32 349, ; 773
	i32 85, ; 774
	i32 351, ; 775
	i32 286, ; 776
	i32 257, ; 777
	i32 526, ; 778
	i32 194, ; 779
	i32 328, ; 780
	i32 392, ; 781
	i32 160, ; 782
	i32 2, ; 783
	i32 299, ; 784
	i32 24, ; 785
	i32 279, ; 786
	i32 32, ; 787
	i32 117, ; 788
	i32 37, ; 789
	i32 16, ; 790
	i32 365, ; 791
	i32 466, ; 792
	i32 471, ; 793
	i32 174, ; 794
	i32 490, ; 795
	i32 489, ; 796
	i32 52, ; 797
	i32 457, ; 798
	i32 352, ; 799
	i32 195, ; 800
	i32 20, ; 801
	i32 273, ; 802
	i32 123, ; 803
	i32 154, ; 804
	i32 182, ; 805
	i32 209, ; 806
	i32 479, ; 807
	i32 306, ; 808
	i32 469, ; 809
	i32 131, ; 810
	i32 385, ; 811
	i32 237, ; 812
	i32 391, ; 813
	i32 288, ; 814
	i32 148, ; 815
	i32 199, ; 816
	i32 390, ; 817
	i32 391, ; 818
	i32 275, ; 819
	i32 120, ; 820
	i32 28, ; 821
	i32 132, ; 822
	i32 100, ; 823
	i32 134, ; 824
	i32 456, ; 825
	i32 326, ; 826
	i32 435, ; 827
	i32 153, ; 828
	i32 97, ; 829
	i32 125, ; 830
	i32 276, ; 831
	i32 379, ; 832
	i32 69, ; 833
	i32 519, ; 834
	i32 371, ; 835
	i32 72, ; 836
	i32 377, ; 837
	i32 520, ; 838
	i32 311, ; 839
	i32 528, ; 840
	i32 329, ; 841
	i32 136, ; 842
	i32 255, ; 843
	i32 412, ; 844
	i32 124, ; 845
	i32 462, ; 846
	i32 71, ; 847
	i32 485, ; 848
	i32 498, ; 849
	i32 111, ; 850
	i32 321, ; 851
	i32 174, ; 852
	i32 207, ; 853
	i32 454, ; 854
	i32 152, ; 855
	i32 512, ; 856
	i32 434, ; 857
	i32 440, ; 858
	i32 511, ; 859
	i32 528, ; 860
	i32 349, ; 861
	i32 118, ; 862
	i32 297, ; 863
	i32 175, ; 864
	i32 496, ; 865
	i32 127, ; 866
	i32 133, ; 867
	i32 208, ; 868
	i32 381, ; 869
	i32 461, ; 870
	i32 473, ; 871
	i32 77, ; 872
	i32 46, ; 873
	i32 300, ; 874
	i32 73, ; 875
	i32 63, ; 876
	i32 98, ; 877
	i32 84, ; 878
	i32 513, ; 879
	i32 43, ; 880
	i32 61, ; 881
	i32 219, ; 882
	i32 327, ; 883
	i32 410, ; 884
	i32 518, ; 885
	i32 206, ; 886
	i32 390, ; 887
	i32 37, ; 888
	i32 378, ; 889
	i32 40, ; 890
	i32 290, ; 891
	i32 355, ; 892
	i32 160, ; 893
	i32 259, ; 894
	i32 98, ; 895
	i32 260, ; 896
	i32 295, ; 897
	i32 267, ; 898
	i32 208, ; 899
	i32 238, ; 900
	i32 263, ; 901
	i32 135, ; 902
	i32 20, ; 903
	i32 65, ; 904
	i32 500, ; 905
	i32 125, ; 906
	i32 75, ; 907
	i32 319, ; 908
	i32 164, ; 909
	i32 209, ; 910
	i32 156, ; 911
	i32 5, ; 912
	i32 49, ; 913
	i32 333, ; 914
	i32 501, ; 915
	i32 144, ; 916
	i32 139, ; 917
	i32 455, ; 918
	i32 100, ; 919
	i32 225, ; 920
	i32 123, ; 921
	i32 120, ; 922
	i32 142, ; 923
	i32 373, ; 924
	i32 39, ; 925
	i32 375, ; 926
	i32 68, ; 927
	i32 41, ; 928
	i32 520, ; 929
	i32 388, ; 930
	i32 444, ; 931
	i32 164, ; 932
	i32 392, ; 933
	i32 73, ; 934
	i32 410, ; 935
	i32 487, ; 936
	i32 514, ; 937
	i32 475, ; 938
	i32 165, ; 939
	i32 213, ; 940
	i32 252, ; 941
	i32 127, ; 942
	i32 305, ; 943
	i32 400, ; 944
	i32 476, ; 945
	i32 354, ; 946
	i32 68, ; 947
	i32 169, ; 948
	i32 243, ; 949
	i32 400, ; 950
	i32 429, ; 951
	i32 231, ; 952
	i32 481, ; 953
	i32 318, ; 954
	i32 292, ; 955
	i32 465, ; 956
	i32 260, ; 957
	i32 230, ; 958
	i32 325, ; 959
	i32 151, ; 960
	i32 45, ; 961
	i32 108, ; 962
	i32 48, ; 963
	i32 96, ; 964
	i32 31, ; 965
	i32 357, ; 966
	i32 513, ; 967
	i32 434, ; 968
	i32 23, ; 969
	i32 166, ; 970
	i32 22, ; 971
	i32 361, ; 972
	i32 138, ; 973
	i32 371, ; 974
	i32 78, ; 975
	i32 521, ; 976
	i32 173, ; 977
	i32 370, ; 978
	i32 54, ; 979
	i32 368, ; 980
	i32 318, ; 981
	i32 323, ; 982
	i32 10, ; 983
	i32 281, ; 984
	i32 192, ; 985
	i32 322, ; 986
	i32 309, ; 987
	i32 186, ; 988
	i32 16, ; 989
	i32 139, ; 990
	i32 224, ; 991
	i32 376, ; 992
	i32 13, ; 993
	i32 218, ; 994
	i32 15, ; 995
	i32 122, ; 996
	i32 516, ; 997
	i32 87, ; 998
	i32 149, ; 999
	i32 22, ; 1000
	i32 506, ; 1001
	i32 34, ; 1002
	i32 79, ; 1003
	i32 506, ; 1004
	i32 347, ; 1005
	i32 269, ; 1006
	i32 386, ; 1007
	i32 147, ; 1008
	i32 80, ; 1009
	i32 504, ; 1010
	i32 175, ; 1011
	i32 271, ; 1012
	i32 403, ; 1013
	i32 477, ; 1014
	i32 425, ; 1015
	i32 274, ; 1016
	i32 516, ; 1017
	i32 42, ; 1018
	i32 197, ; 1019
	i32 253, ; 1020
	i32 26, ; 1021
	i32 455, ; 1022
	i32 320, ; 1023
	i32 317, ; 1024
	i32 107, ; 1025
	i32 256, ; 1026
	i32 110, ; 1027
	i32 221, ; 1028
	i32 416, ; 1029
	i32 507, ; 1030
	i32 378, ; 1031
	i32 7, ; 1032
	i32 428, ; 1033
	i32 350, ; 1034
	i32 210, ; 1035
	i32 445, ; 1036
	i32 44, ; 1037
	i32 500, ; 1038
	i32 161, ; 1039
	i32 437, ; 1040
	i32 203, ; 1041
	i32 148, ; 1042
	i32 286, ; 1043
	i32 322, ; 1044
	i32 38, ; 1045
	i32 15, ; 1046
	i32 431, ; 1047
	i32 270, ; 1048
	i32 146, ; 1049
	i32 8, ; 1050
	i32 303, ; 1051
	i32 186, ; 1052
	i32 324, ; 1053
	i32 130, ; 1054
	i32 510, ; 1055
	i32 247, ; 1056
	i32 509, ; 1057
	i32 505, ; 1058
	i32 358, ; 1059
	i32 340, ; 1060
	i32 94 ; 1061
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
