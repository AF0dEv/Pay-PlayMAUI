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

@assembly_image_cache = dso_local local_unnamed_addr global [525 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1050 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 296
	i64 41321585999485087, ; 1: cs\Humanizer.resources => 0x92cdc3770e189f => 356
	i64 87581036036292584, ; 2: bg\Humanizer.resources => 0x137267cfe00ffe8 => 354
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 214
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 5: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 227
	i64 147864158106373369, ; 6: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x20d51ab1af14cf9 => 441
	i64 182106475126841455, ; 7: Humanizer.dll => 0x286f8dfd13be06f => 176
	i64 196720943101637631, ; 8: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 9: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 283
	i64 218243443877096319, ; 10: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x3075b4182da2b7f => 440
	i64 229794953483747371, ; 11: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 12: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 324
	i64 276471738906638264, ; 13: NuGet.LibraryModel.dll => 0x3d63994ebf6f7b8 => 245
	i64 295915112840604065, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 327
	i64 313293977520445317, ; 15: zh-CN\Humanizer.resources.dll => 0x4590b3670601785 => 396
	i64 316157742385208084, ; 16: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 290
	i64 326406607831425625, ; 17: ru\Microsoft.CodeAnalysis.resources.dll => 0x487a1149821e259 => 408
	i64 350667413455104241, ; 18: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 374214195677100225, ; 19: Microsoft.CodeAnalysis.Razor => 0x53179d40b3df8c1 => 191
	i64 406486731283901647, ; 20: es\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x5a4218748162ccf => 427
	i64 422779754995088667, ; 21: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 22: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 326
	i64 455940612404211789, ; 23: es\Microsoft.CodeAnalysis.Workspaces.resources => 0x653d3924106f04d => 479
	i64 496929328902369351, ; 24: cs\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6e572977fb2f047 => 425
	i64 535597045548414309, ; 25: NuGet.ProjectModel => 0x76ed2acdaa97565 => 247
	i64 560278790331054453, ; 26: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 628098050054629041, ; 27: is\Humanizer.resources => 0x8b773d9459f26b1 => 370
	i64 634256334200181332, ; 28: Microsoft.CodeAnalysis.CSharp.dll => 0x8cd54c6888b1254 => 186
	i64 634308326490598313, ; 29: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 309
	i64 641670810394036365, ; 30: PayAndPlayMAUI => 0x8e7ac33cc46088d => 0
	i64 649145001856603771, ; 31: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 670564002081277297, ; 32: Microsoft.Identity.Client.dll => 0x94e526837380571 => 215
	i64 702024105029695270, ; 33: System.Drawing.Common => 0x9be17343c0e7726 => 258
	i64 716654442676844823, ; 34: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x9f2116b2a757917 => 437
	i64 726593401349421218, ; 35: vi\Humanizer.resources => 0xa1560d94f9338a2 => 395
	i64 737318085524959015, ; 36: NuGet.Frameworks => 0xa3b7ae46e2faf27 => 244
	i64 742388989842837819, ; 37: Microsoft.VisualStudio.Web.CodeGenerators.Mvc => 0xa4d7eda58be513b => 237
	i64 750875890346172408, ; 38: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 766770282063650139, ; 39: sr\Humanizer.resources => 0xaa41d824ebadd5b => 387
	i64 780588404640540820, ; 40: ms-MY\Humanizer.resources.dll => 0xad53504ae636894 => 376
	i64 798450721097591769, ; 41: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 284
	i64 799765834175365804, ; 42: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 43: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 502
	i64 856745483922317989, ; 44: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xbe3c57a781c22a5 => 450
	i64 872800313462103108, ; 45: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 295
	i64 895210737996778430, ; 46: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 310
	i64 895583451341852636, ; 47: Microsoft.Build.Framework.dll => 0xc6dc0676bf30fdc => 183
	i64 917904283621948910, ; 48: zh-Hans\Microsoft.CodeAnalysis.Features.resources => 0xcbd0d152b187dee => 462
	i64 937459790420187032, ; 49: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 230
	i64 940822596282819491, ; 50: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 51: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 989127641070905171, ; 52: cs\Microsoft.CodeAnalysis.CSharp.resources => 0xdba1659538d2753 => 412
	i64 1010599046655515943, ; 53: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1027655141085176894, ; 54: NuGet.DependencyResolver.Core.dll => 0xe42f6e7f3fc643e => 243
	i64 1038220935101773657, ; 55: uk\Humanizer.resources.dll => 0xe688070931d7759 => 392
	i64 1060858978308751610, ; 56: Azure.Core.dll => 0xeb8ed9ebee080fa => 173
	i64 1120440138749646132, ; 57: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 339
	i64 1176030902986760664, ; 58: ja\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x105219e0196861d8 => 417
	i64 1264098730510327121, ; 59: it\Microsoft.CodeAnalysis.Workspaces.resources => 0x118afb1911171d51 => 481
	i64 1268860745194512059, ; 60: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 61: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 200
	i64 1290330591097798837, ; 62: PayAndPlayMAUI.dll => 0x11e82cd60d3440b5 => 0
	i64 1301626418029409250, ; 63: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 64: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 279
	i64 1361298542975918955, ; 65: Microsoft.VisualStudio.Web.CodeGeneration.Templating => 0x12e44dcff756236b => 235
	i64 1369545283391376210, ; 66: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 317
	i64 1404195534211153682, ; 67: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 68: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 69: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1484341423788646703, ; 70: de\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x149970a91a51e12f => 426
	i64 1486715745332614827, ; 71: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 224
	i64 1492407416628141526, ; 72: it\Microsoft.CodeAnalysis.CSharp.resources => 0x14b618a368475dd6 => 416
	i64 1492954217099365037, ; 73: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 74: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 75: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1576750169145655260, ; 76: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 338
	i64 1578461236315596192, ; 77: zh-Hant\Microsoft.CodeAnalysis.resources => 0x15e7d221a250a5a0 => 411
	i64 1580831035586038082, ; 78: NuGet.Versioning.dll => 0x15f03d738604c942 => 249
	i64 1604828716977660633, ; 79: it\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x16457f3720cca2d9 => 429
	i64 1624659445732251991, ; 80: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 278
	i64 1628611045998245443, ; 81: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 313
	i64 1636321030536304333, ; 82: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 303
	i64 1639340239664632727, ; 83: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 177
	i64 1651782184287836205, ; 84: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659106469264733432, ; 85: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x1706548b2113b4f8 => 446
	i64 1659332977923810219, ; 86: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 87: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 88: Newtonsoft.Json => 0x18071957e9b889d7 => 240
	i64 1735388228521408345, ; 89: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1741042453479892310, ; 90: tr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x18296ce3128b2556 => 435
	i64 1743969030606105336, ; 91: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 92: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 93: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 277
	i64 1825687700144851180, ; 94: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 95: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 496
	i64 1836611346387731153, ; 96: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 324
	i64 1854145951182283680, ; 97: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 98: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 181
	i64 1875417405349196092, ; 99: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 100: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 274
	i64 1881198190668717030, ; 101: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 518
	i64 1897575647115118287, ; 102: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 326
	i64 1920760634179481754, ; 103: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 225
	i64 1956582621840560024, ; 104: de\Microsoft.CodeAnalysis.CSharp.resources => 0x1b272d8734824f98 => 413
	i64 1966367835830129316, ; 105: fr\Microsoft.CodeAnalysis.Workspaces.resources => 0x1b49f120e06892a4 => 480
	i64 1972384582241139858, ; 106: Microsoft.CodeAnalysis.CSharp => 0x1b5f5153d0f0bc92 => 186
	i64 1972385128188460614, ; 107: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 108: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 311
	i64 2031290047871406080, ; 109: pl\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x1c3097894b295000 => 432
	i64 2040001226662520565, ; 110: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 111: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 112: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 347
	i64 2075546959977054240, ; 113: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore => 0x1ccdd2f6a0130020 => 234
	i64 2077488400323790517, ; 114: Microsoft.CodeAnalysis.Features.dll => 0x1cd4b8b16e4b46b5 => 190
	i64 2080945842184875448, ; 115: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 116: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 117: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 118: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 240
	i64 2165310824878145998, ; 119: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 271
	i64 2165725771938924357, ; 120: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 281
	i64 2188424039095181899, ; 121: es\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x1e5ed8119c31a24b => 440
	i64 2192948757939169934, ; 122: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 198
	i64 2200176636225660136, ; 123: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 212
	i64 2219986950236918443, ; 124: tr\Microsoft.CodeAnalysis.CSharp.resources => 0x1ecefa5e86dfd2ab => 422
	i64 2262844636196693701, ; 125: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 295
	i64 2275252695863103437, ; 126: System.Reflection.MetadataLoadContext.dll => 0x1f935245a72b8fcd => 262
	i64 2283766573134170374, ; 127: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x1fb191992d92c906 => 485
	i64 2287834202362508563, ; 128: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 129: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 130: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 323
	i64 2315304989185124968, ; 131: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 132: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 221
	i64 2323958648452149394, ; 133: cs\Microsoft.CodeAnalysis.resources => 0x20405c13f1aff092 => 399
	i64 2329709569556905518, ; 134: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 306
	i64 2335503487726329082, ; 135: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 136: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2347015728160852727, ; 137: uz-Cyrl-UZ\Humanizer.resources.dll => 0x2092465ea7484af7 => 393
	i64 2352472270739883180, ; 138: Microsoft.DotNet.Scaffolding.Shared => 0x20a5a910f96844ac => 196
	i64 2391088182243165216, ; 139: Microsoft.VisualStudio.Web.CodeGeneration.Utils => 0x212eda08813d0420 => 236
	i64 2398049273691867220, ; 140: it\Humanizer.resources.dll => 0x2147951be8498854 => 371
	i64 2455121377850707897, ; 141: NuGet.Frameworks.dll => 0x221257e2a7424fb9 => 244
	i64 2470498323731680442, ; 142: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 288
	i64 2479423007379663237, ; 143: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 333
	i64 2497223385847772520, ; 144: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2530193663219599640, ; 145: fr\Microsoft.CodeAnalysis.resources.dll => 0x231d0dbb2d260918 => 402
	i64 2547086958574651984, ; 146: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 272
	i64 2554797818648757682, ; 147: System.Runtime.Caching.dll => 0x23747714858085b2 => 263
	i64 2565166297354812447, ; 148: zh-Hant\Humanizer.resources => 0x23994d2817a33c1f => 398
	i64 2592350477072141967, ; 149: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 150: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 517
	i64 2606170708597053130, ; 151: Microsoft.AspNetCore.Identity.EntityFrameworkCore => 0x242afa738df496ca => 179
	i64 2612152650457191105, ; 152: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 222
	i64 2624866290265602282, ; 153: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 154: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 155: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 205
	i64 2662981627730767622, ; 156: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 492
	i64 2704260652175460545, ; 157: System.Composition.Convention => 0x258776bc40fc08c1 => 252
	i64 2706075432581334785, ; 158: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2746068332251068081, ; 159: da\Humanizer.resources => 0x261bfe9950c636b1 => 357
	i64 2768338167292098076, ; 160: hr\Humanizer.resources.dll => 0x266b1ce55799f61c => 366
	i64 2780813979559651871, ; 161: pl\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x26976f94be17ea1f => 471
	i64 2783046991838674048, ; 162: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 163: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 328
	i64 2789714023057451704, ; 164: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 218
	i64 2815524396660695947, ; 165: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2844780895111324988, ; 166: System.Composition.TypedParts => 0x277ab126dceda53c => 255
	i64 2851879596360956261, ; 167: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 256
	i64 2853227249135621881, ; 168: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources => 0x2798b310e83196f9 => 475
	i64 2895129759130297543, ; 169: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 497
	i64 2923871038697555247, ; 170: Jsr305Binding => 0x2893ad37e69ec52f => 340
	i64 2929104377493279868, ; 171: de\Humanizer.resources => 0x28a644e98a87547c => 358
	i64 2947509796159691470, ; 172: Microsoft.Build.dll => 0x28e7a88b04151ace => 182
	i64 2947850844982079217, ; 173: sr-Latn\Humanizer.resources.dll => 0x28e8deb9a1fdeef1 => 388
	i64 2964143786520939826, ; 174: zh-Hant\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x2922c111b2c30d32 => 437
	i64 2965696071044998957, ; 175: Microsoft.Build => 0x292844dd1a68a72d => 182
	i64 2980608131069488904, ; 176: ko\Microsoft.CodeAnalysis.resources.dll => 0x295d3f4da309af08 => 405
	i64 3017136373564924869, ; 177: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 178: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 339
	i64 3106852385031680087, ; 179: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 180: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 181: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3164891818821290784, ; 182: Microsoft.VisualStudio.Web.CodeGeneration.Core.dll => 0x2bebf45745620b20 => 232
	i64 3177281325366702732, ; 183: lv\Humanizer.resources => 0x2c17f8880df6f28c => 375
	i64 3196199893121312905, ; 184: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x2c5b2ede5ca32889 => 433
	i64 3219426262500628937, ; 185: zh-Hans\Humanizer.resources => 0x2cadb320e4e9d9c9 => 397
	i64 3238539556702659506, ; 186: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 238
	i64 3245892109222566308, ; 187: Humanizer => 0x2d0bb9ad057459a4 => 176
	i64 3249191069799534468, ; 188: pl\Microsoft.CodeAnalysis.Features.resources.dll => 0x2d17721022c5cf84 => 458
	i64 3276991435551191081, ; 189: tr\Microsoft.CodeAnalysis.resources => 0x2d7a36593006b029 => 409
	i64 3281594302220646930, ; 190: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3286236885238732615, ; 191: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x2d9b0f093070d747 => 444
	i64 3289520064315143713, ; 192: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 304
	i64 3296267368358378859, ; 193: fr\Humanizer.resources => 0x2dbeb1b507b67d6b => 363
	i64 3300711494004215107, ; 194: az\Humanizer.resources => 0x2dce7b9daa2b8d43 => 353
	i64 3303437397778967116, ; 195: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 275
	i64 3311221304742556517, ; 196: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 197: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 198: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 199: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 350
	i64 3347716888374667791, ; 200: Microsoft.VisualStudio.Web.CodeGeneration.EntityFrameworkCore.dll => 0x2e757ac5e425ea0f => 234
	i64 3402534845034375023, ; 201: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 259
	i64 3429672777697402584, ; 202: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 227
	i64 3437845325506641314, ; 203: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3485247931931847483, ; 204: NuGet.DependencyResolver.Core => 0x305e168748f66b3b => 243
	i64 3493805808809882663, ; 205: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 330
	i64 3494946837667399002, ; 206: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 203
	i64 3508450208084372758, ; 207: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3518196480742834290, ; 208: hr\Humanizer.resources => 0x30d3250f1cb4c072 => 366
	i64 3519485567556646019, ; 209: af\Humanizer.resources.dll => 0x30d7b97a0653f483 => 351
	i64 3522470458906976663, ; 210: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 329
	i64 3523004241079211829, ; 211: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 202
	i64 3531994851595924923, ; 212: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 213: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 214: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 512
	i64 3571415421602489686, ; 215: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3571549974538685733, ; 216: es\Humanizer.resources => 0x3190b1c769ef0d25 => 360
	i64 3617693510765662356, ; 217: tr\Humanizer.resources.dll => 0x3234a114a76c5094 => 391
	i64 3638003163729360188, ; 218: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 204
	i64 3647754201059316852, ; 219: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 220: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 203
	i64 3659371656528649588, ; 221: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 269
	i64 3716579019761409177, ; 222: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 223: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 322
	i64 3772598417116884899, ; 224: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 296
	i64 3802880763638011883, ; 225: hy\Humanizer.resources.dll => 0x34c68be7efcf57eb => 368
	i64 3824932011597312594, ; 226: mt\Humanizer.resources.dll => 0x3514e36631473252 => 377
	i64 3867113825886090672, ; 227: zh-Hans\Microsoft.CodeAnalysis.Features.resources.dll => 0x35aabf8929f135b0 => 462
	i64 3869221888984012293, ; 228: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 210
	i64 3869649043256705283, ; 229: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 230: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 225
	i64 3919223565570527920, ; 231: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 232: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 233: System.Memory => 0x370b03412596249e => 62
	i64 3986466921713458903, ; 234: System.Composition.Hosting => 0x3752c68b49935ed7 => 253
	i64 4006972109285359177, ; 235: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 236: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4050160939984404678, ; 237: hy\Humanizer.resources => 0x38350fea8eeec0c6 => 368
	i64 4054446190056038390, ; 238: Microsoft.CodeAnalysis.Scripting => 0x384449541739dff6 => 192
	i64 4070326265757318011, ; 239: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 493
	i64 4073500526318903918, ; 240: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 241: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 223
	i64 4103536282112930583, ; 242: pl\Humanizer.resources => 0x38f2b081d244b317 => 381
	i64 4120493066591692148, ; 243: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 523
	i64 4127194541735850366, ; 244: es\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x3946bd91a318b17e => 466
	i64 4148881117810174540, ; 245: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 246: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4159398497900796080, ; 247: pt-BR\Microsoft.CodeAnalysis.Scripting.resources => 0x39b926e57aab98b0 => 472
	i64 4167269041631776580, ; 248: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 249: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 250: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 251: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 290
	i64 4204757096761433397, ; 252: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x3a5a4c4d3f449d35 => 436
	i64 4205801962323029395, ; 253: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 254: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4247844498619075610, ; 255: nl\Humanizer.resources.dll => 0x3af36010c1498c1a => 380
	i64 4248157371830482495, ; 256: es\Microsoft.CodeAnalysis.resources.dll => 0x3af47c9f39e9b63f => 401
	i64 4282138915307457788, ; 257: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4297618840113831272, ; 258: ru\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x3ba43590b902dd68 => 473
	i64 4321865999928413850, ; 259: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 257
	i64 4329480046338915646, ; 260: Microsoft.DotNet.Scaffolding.Shared.dll => 0x3c156729e02c3d3e => 196
	i64 4360412976914417659, ; 261: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 518
	i64 4371205382599439717, ; 262: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x3ca9a422c61d7565 => 438
	i64 4373617458794931033, ; 263: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4379749246949246326, ; 264: tr\Microsoft.CodeAnalysis.Features.resources.dll => 0x3cc7febc35b1c576 => 461
	i64 4397634830160618470, ; 265: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4445901490610013307, ; 266: sv\Humanizer.resources.dll => 0x3db303d9ae30847b => 389
	i64 4477672992252076438, ; 267: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 268: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4501269696413264595, ; 269: fr-BE\Humanizer.resources => 0x3e77b8f0acf16ad3 => 364
	i64 4513320955448359355, ; 270: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 199
	i64 4533124835995628778, ; 271: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4570722926389787063, ; 272: tr\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x3f6e7848ea3279b7 => 435
	i64 4612482779465751747, ; 273: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 198
	i64 4633188143799146779, ; 274: fr\Microsoft.CodeAnalysis.resources => 0x404c6411b0b3191b => 402
	i64 4636684751163556186, ; 275: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 334
	i64 4656760805671048172, ; 276: System.Reflection.MetadataLoadContext => 0x40a02347b9fc13ec => 262
	i64 4659009777957576247, ; 277: sr\Humanizer.resources.dll => 0x40a820b5643b9e37 => 387
	i64 4659385769810716620, ; 278: Microsoft.AspNetCore.Identity.EntityFrameworkCore.dll => 0x40a976abd113e7cc => 179
	i64 4672453897036726049, ; 279: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 280: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4737023577144429365, ; 281: fr\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x41bd49d878580b35 => 480
	i64 4743821336939966868, ; 282: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 283: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 308
	i64 4769962302518424429, ; 284: de\Humanizer.resources.dll => 0x42324f71199d736d => 358
	i64 4782435378178000589, ; 285: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x425e9fa3558f86cd => 447
	i64 4794310189461587505, ; 286: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 272
	i64 4795410492532947900, ; 287: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 329
	i64 4809057822547766521, ; 288: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 289: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4823480931696991453, ; 290: sr-Latn\Humanizer.resources => 0x42f07259faab5cdd => 388
	i64 4848309767277065693, ; 291: ro\Humanizer.resources => 0x4348a80bbf9b35dd => 383
	i64 4849062125611947093, ; 292: Microsoft.VisualStudio.Web.CodeGeneration.dll => 0x434b544fd2e69455 => 231
	i64 4853321196694829351, ; 293: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 294: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 508
	i64 4953714692329509532, ; 295: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 516
	i64 5055365687667823624, ; 296: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 273
	i64 5080318486421939212, ; 297: pt-BR\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x4680eabf2907a40c => 433
	i64 5081566143765835342, ; 298: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5083120864858317402, ; 299: zh-Hans\Microsoft.CodeAnalysis.resources => 0x468adf7ebc41a25a => 410
	i64 5099468265966638712, ; 300: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5101282090298625898, ; 301: ja\Microsoft.CodeAnalysis.Workspaces.resources => 0x46cb65088b4fcf6a => 482
	i64 5103417709280584325, ; 302: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5107702058248948463, ; 303: ru\Microsoft.CodeAnalysis.CSharp.resources => 0x46e233f5d075caef => 421
	i64 5107903599106960149, ; 304: pl\Humanizer.resources.dll => 0x46e2eb42b3b5ab15 => 381
	i64 5182934613077526976, ; 305: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 306: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 315
	i64 5244375036463807528, ; 307: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 308: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 309: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 310: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 307
	i64 5290786973231294105, ; 311: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5341528465380060113, ; 312: ko\Microsoft.CodeAnalysis.Features.resources => 0x4a20ebd6b09dabd1 => 457
	i64 5362325392475259001, ; 313: fr\Microsoft.CodeAnalysis.Features.resources.dll => 0x4a6ace889c8b8079 => 454
	i64 5376510917114486089, ; 314: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 333
	i64 5408338804355907810, ; 315: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 331
	i64 5423376490970181369, ; 316: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 317: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5440726247657876941, ; 318: th-TH\Humanizer.resources => 0x4b8157b22fcaadcd => 390
	i64 5446034149219586269, ; 319: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 320: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 286
	i64 5457765010617926378, ; 321: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 322: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 516
	i64 5478493157351955748, ; 323: NuGet.Protocol.dll => 0x4c078480145f1d24 => 248
	i64 5488847537322884930, ; 324: System.Windows.Extensions => 0x4c2c4dc108687f42 => 267
	i64 5507995362134886206, ; 325: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 326: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 519
	i64 5527431512186326818, ; 327: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5530753022255820472, ; 328: de\Microsoft.CodeAnalysis.Features.resources.dll => 0x4cc12e920ff9eeb8 => 452
	i64 5570799893513421663, ; 329: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 330: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 331: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 276
	i64 5586474322064658720, ; 332: fr\Microsoft.CodeAnalysis.CSharp.resources => 0x4d8724cc29815120 => 415
	i64 5591791169662171124, ; 333: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 334: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5666966988235717116, ; 335: ku\Humanizer.resources.dll => 0x4ea51c736fa7b9fc => 374
	i64 5692067934154308417, ; 336: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 336
	i64 5697338526674305454, ; 337: pl\Microsoft.CodeAnalysis.CSharp.resources => 0x4f1103344791c1ae => 419
	i64 5717718751406333486, ; 338: NuGet.Configuration => 0x4f596ae91f2a1e2e => 242
	i64 5724799082821825042, ; 339: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 299
	i64 5757522595884336624, ; 340: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 285
	i64 5783556987928984683, ; 341: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5802406400352127139, ; 342: Microsoft.VisualStudio.Web.CodeGenerators.Mvc.dll => 0x508649e0ef7108a3 => 237
	i64 5896680224035167651, ; 343: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 305
	i64 5959344983920014087, ; 344: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 325
	i64 5979151488806146654, ; 345: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5981100626307227755, ; 346: pt-BR\Microsoft.CodeAnalysis.CSharp.resources => 0x5301235494e8a06b => 420
	i64 5984759512290286505, ; 347: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 5985025747959996647, ; 348: Microsoft.DiaSymReader.dll => 0x530f15352eb8e0e7 => 195
	i64 6027980928648036188, ; 349: ko\Microsoft.CodeAnalysis.Scripting.resources => 0x53a7b0b78ce53f5c => 470
	i64 6037456759088912127, ; 350: ko\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x53c95aef404696ff => 431
	i64 6052006988162547083, ; 351: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x53fd0c4a739c3d8b => 443
	i64 6052904953572895746, ; 352: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x54003cfc50ea2c02 => 448
	i64 6102788177522843259, ; 353: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 325
	i64 6200764641006662125, ; 354: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 513
	i64 6222399776351216807, ; 355: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 356: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 357: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 358: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300676701234028427, ; 359: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 496
	i64 6319713645133255417, ; 360: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 309
	i64 6357457916754632952, ; 361: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 524
	i64 6362365112271840035, ; 362: NuGet.Protocol => 0x584ba95c404d2323 => 248
	i64 6397768165450447711, ; 363: es\Microsoft.CodeAnalysis.CSharp.resources => 0x58c9703fe8f9fb5f => 414
	i64 6400672600465831140, ; 364: ja\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x58d3c1d1625774e4 => 443
	i64 6401687960814735282, ; 365: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 306
	i64 6405571018036478432, ; 366: ko\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x58e528e7199a01e0 => 444
	i64 6433579551879206084, ; 367: fr\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x5948aa840ffa14c4 => 415
	i64 6471714727257221498, ; 368: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 497
	i64 6478287442656530074, ; 369: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 501
	i64 6501546733837973877, ; 370: id\Humanizer.resources => 0x5a3a224ec9037975 => 369
	i64 6504860066809920875, ; 371: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 281
	i64 6548213210057960872, ; 372: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 292
	i64 6554818985595797637, ; 373: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x5af76523736c8085 => 442
	i64 6557084851308642443, ; 374: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 337
	i64 6560151584539558821, ; 375: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 213
	i64 6584419190991186517, ; 376: NuGet.Versioning => 0x5b608e5e534b6a55 => 249
	i64 6589202984700901502, ; 377: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 342
	i64 6591971792923354531, ; 378: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 307
	i64 6602667871317180150, ; 379: nb\Humanizer.resources.dll => 0x5ba163724fbebef6 => 378
	i64 6608986621077214301, ; 380: nb-NO\Humanizer.resources.dll => 0x5bb7d650e29dd45d => 379
	i64 6617685658146568858, ; 381: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6642279005832796386, ; 382: tr\Microsoft.CodeAnalysis.Workspaces.resources => 0x5c2e1d9041b2d8e2 => 487
	i64 6662095722613742648, ; 383: ar\Humanizer.resources => 0x5c7484c32e0a9c38 => 352
	i64 6673492278322518085, ; 384: tr\Microsoft.CodeAnalysis.resources.dll => 0x5c9d01de94b9d845 => 409
	i64 6713440830605852118, ; 385: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 386: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 387: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 509
	i64 6772837112740759457, ; 388: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6785756066475633138, ; 389: ja\Microsoft.CodeAnalysis.Features.resources => 0x5e2bd930a2bb69f2 => 456
	i64 6786606130239981554, ; 390: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 391: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6799665367296212282, ; 392: uk\Humanizer.resources => 0x5e5d43a019377d3a => 392
	i64 6800157191326250309, ; 393: Microsoft.CodeAnalysis.CSharp.Workspaces => 0x5e5f02efcdd1b545 => 188
	i64 6814185388980153342, ; 394: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6863477688097626297, ; 395: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x5f3ff897d2e0d8b9 => 488
	i64 6876862101832370452, ; 396: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6881674271711615136, ; 397: pl\Microsoft.CodeAnalysis.Workspaces.resources => 0x5f809e4a1950d8a0 => 484
	i64 6893780433488385105, ; 398: de\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x5faba0c7899d1451 => 478
	i64 6894844156784520562, ; 399: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6911517594278112275, ; 400: tr\Microsoft.CodeAnalysis.Features.resources => 0x5feaa4a219cf2c13 => 461
	i64 6916425539059316312, ; 401: de\Microsoft.CodeAnalysis.resources => 0x5ffc14620b11f658 => 400
	i64 6964286494529358928, ; 402: ku\Humanizer.resources => 0x60a61dab1c790c50 => 374
	i64 6985819478807084611, ; 403: uz-Cyrl-UZ\Humanizer.resources => 0x60f29dcdb34cfe43 => 393
	i64 7011053663211085209, ; 404: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 301
	i64 7060896174307865760, ; 405: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 406: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7089561094984850497, ; 407: pt-BR\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x62632e40f8005c41 => 472
	i64 7101497697220435230, ; 408: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 409: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 302
	i64 7105430439328552570, ; 410: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 264
	i64 7112547816752919026, ; 411: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7113371626429202782, ; 412: bg\Humanizer.resources.dll => 0x62b7c5ce54a7c15e => 354
	i64 7148515934569711863, ; 413: NuGet.Packaging.dll => 0x6334a15e373f48f7 => 246
	i64 7188876148444261747, ; 414: System.Composition.AttributedModel.dll => 0x63c404c4ca4c6d73 => 251
	i64 7192745174564810625, ; 415: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 271
	i64 7212896777207732725, ; 416: fa\Humanizer.resources.dll => 0x64195b673f06d9f5 => 361
	i64 7219616639871433054, ; 417: ja\Microsoft.CodeAnalysis.CSharp.resources => 0x64313b153209395e => 417
	i64 7270811800166795866, ; 418: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 419: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7304135784225337694, ; 420: fi-FI\Humanizer.resources => 0x655d80cbf9f8715e => 362
	i64 7316205155833392065, ; 421: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 422: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 423: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 261
	i64 7349431895026339542, ; 424: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 270
	i64 7377312882064240630, ; 425: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7398281968956400768, ; 426: pl\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x66abfa40c3d2e480 => 432
	i64 7488575175965059935, ; 427: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 428: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 429: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 259
	i64 7507915030481126195, ; 430: zh-Hant\Microsoft.CodeAnalysis.Features.resources.dll => 0x683178f10ba4c333 => 463
	i64 7579876713893044336, ; 431: de\Microsoft.CodeAnalysis.Features.resources => 0x693121b61cd9a070 => 452
	i64 7592577537120840276, ; 432: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 433: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 434: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7659175115073460922, ; 435: de\Microsoft.CodeAnalysis.CSharp.Features.resources => 0x6a4adb2fe6771aba => 426
	i64 7694110031107265897, ; 436: ru\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x6ac6f84ee2eb1569 => 434
	i64 7694700312542370399, ; 437: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 438: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 439: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 310
	i64 7735176074855944702, ; 440: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 441: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 345
	i64 7742555799473854801, ; 442: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 504
	i64 7791074099216502080, ; 443: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7800262899020527687, ; 444: pt\Humanizer.resources => 0x6c4019c772c6f847 => 382
	i64 7820441508502274321, ; 445: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 446: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 278
	i64 7874680181924468550, ; 447: Microsoft.CodeAnalysis.Elfie => 0x6d487be7536a9746 => 189
	i64 7877653024023762272, ; 448: Microsoft.CodeAnalysis.CSharp.Features => 0x6d530bb010b7d560 => 187
	i64 7882403529043535425, ; 449: fa\Humanizer.resources => 0x6d63ec3f34ece641 => 361
	i64 7929771293765145963, ; 450: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x6e0c34fa5af6156b => 445
	i64 7940487153141724357, ; 451: es\Microsoft.CodeAnalysis.Features.resources => 0x6e3246feca90b4c5 => 453
	i64 7972383140441761405, ; 452: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 201
	i64 7975724199463739455, ; 453: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 515
	i64 8004654074791351515, ; 454: ko\Microsoft.CodeAnalysis.Workspaces.resources => 0x6f163e7875d254db => 483
	i64 8025517457475554965, ; 455: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 456: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8032882159747084140, ; 457: pl\Microsoft.CodeAnalysis.Features.resources => 0x6f7a87c3a64c2f6c => 458
	i64 8045853768902652843, ; 458: pt-BR\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x6fa89d5fc22e33ab => 420
	i64 8064050204834738623, ; 459: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 460: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 304
	i64 8085230611270010360, ; 461: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 462: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 463: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 464: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 506
	i64 8113615946733131500, ; 465: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8129655575090457984, ; 466: de\Microsoft.CodeAnalysis.Workspaces.resources => 0x70d256ac3b8a6d80 => 478
	i64 8148667116939980602, ; 467: pt-BR\Microsoft.CodeAnalysis.resources.dll => 0x7115e191c21d2f3a => 407
	i64 8167236081217502503, ; 468: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 469: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 470: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 349
	i64 8198475655723014119, ; 471: Microsoft.CodeAnalysis.CSharp.Features.dll => 0x71c6d62be70ed7e7 => 187
	i64 8234211087038226247, ; 472: de\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x7245cb5b607f1f47 => 413
	i64 8234598844743906698, ; 473: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 216
	i64 8246048515196606205, ; 474: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 228
	i64 8246804492189889837, ; 475: Microsoft.VisualStudio.Web.CodeGeneration => 0x727288fe0112f52d => 231
	i64 8264926008854159966, ; 476: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 477: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 478: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8327329536391025244, ; 479: bn-BD\Humanizer.resources.dll => 0x73909e17e034925c => 355
	i64 8361426872303202087, ; 480: fr\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x7409c1708b09af27 => 467
	i64 8368701292315763008, ; 481: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 482: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 521
	i64 8398329775253868912, ; 483: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 287
	i64 8400357532724379117, ; 484: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 319
	i64 8410671156615598628, ; 485: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 486: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 308
	i64 8442828414178614895, ; 487: Microsoft.AspNetCore.Cryptography.KeyDerivation => 0x752af3b5eeb0de6f => 178
	i64 8453144032365170736, ; 488: Microsoft.Extensions.Identity.Stores.dll => 0x754f99b5f456d030 => 209
	i64 8476857680833348370, ; 489: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 266
	i64 8490820071440741817, ; 490: NuGet.Packaging => 0x75d573de61fb75b9 => 246
	i64 8513291706828295435, ; 491: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 230
	i64 8518412311883997971, ; 492: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 493: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8564067269325865571, ; 494: tr\Humanizer.resources => 0x76d9adce9cb7c263 => 391
	i64 8598790081731763592, ; 495: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 298
	i64 8601935802264776013, ; 496: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 331
	i64 8622798162740718334, ; 497: vi\Humanizer.resources.dll => 0x77aa553e540d2afe => 395
	i64 8623059219396073920, ; 498: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 499: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 500: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 501: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 318
	i64 8648495978913578441, ; 502: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 503: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 511
	i64 8684531736582871431, ; 504: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8691348873255390601, ; 505: el\Humanizer.resources.dll => 0x789ddfc061610d89 => 359
	i64 8725526185868997716, ; 506: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8747977504141423047, ; 507: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources => 0x79670f30f57531c7 => 423
	i64 8769779827360249665, ; 508: ko\Microsoft.CodeAnalysis.Features.resources.dll => 0x79b48449e831b741 => 457
	i64 8784689560710160013, ; 509: zh-Hant\Microsoft.CodeAnalysis.Workspaces.resources => 0x79e97c9cb8361e8d => 489
	i64 8853378295825400934, ; 510: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 346
	i64 8855637769374638964, ; 511: cs\Humanizer.resources.dll => 0x7ae58ba1cf1ba374 => 356
	i64 8918797492400444619, ; 512: dotnet-aspnet-codegenerator-design.dll => 0x7bc5ef10c62c54cb => 233
	i64 8932705878791833663, ; 513: pt-BR\Microsoft.CodeAnalysis.Workspaces.resources => 0x7bf758ab546e483f => 485
	i64 8941376889969657626, ; 514: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 515: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 321
	i64 8954753533646919997, ; 516: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 517: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 215
	i64 8988527500359839366, ; 518: Mono.TextTemplating => 0x7cbdaa2368c72e86 => 239
	i64 9016366737383770868, ; 519: az\Humanizer.resources.dll => 0x7d2091c6e2684af4 => 353
	i64 9045785047181495996, ; 520: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 521
	i64 9052662452269567435, ; 521: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 220
	i64 9111603110219107042, ; 522: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 202
	i64 9138683372487561558, ; 523: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 524: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 197
	i64 9258038534689720297, ; 525: Microsoft.CodeAnalysis.Workspaces => 0x807b28ff010f07e9 => 193
	i64 9259143645429201038, ; 526: zh-CN\Humanizer.resources => 0x807f1616a61f788e => 396
	i64 9287191586081212215, ; 527: ru\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x80e2bb8ab95e0737 => 421
	i64 9312692141327339315, ; 528: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 336
	i64 9320828767200221179, ; 529: ko-KR\Humanizer.resources => 0x815a3c61413617fb => 373
	i64 9324707631942237306, ; 530: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 277
	i64 9363564275759486853, ; 531: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 495
	i64 9411968111718438806, ; 532: cs\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x829e072180481796 => 464
	i64 9427266486299436557, ; 533: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 219
	i64 9441911982924282715, ; 534: ms-MY\Humanizer.resources => 0x830868ec4eb4bb5b => 376
	i64 9467211876562491619, ; 535: zh-Hant\Microsoft.CodeAnalysis.resources.dll => 0x83624b0ad3ddd8e3 => 411
	i64 9468215723722196442, ; 536: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9500688326720985260, ; 537: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 200
	i64 9508211702228543126, ; 538: Microsoft.AspNetCore.Cryptography.KeyDerivation.dll => 0x83f3f42aa08b6696 => 178
	i64 9551379474083066910, ; 539: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 519
	i64 9554839972845591462, ; 540: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 541: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 341
	i64 9584643793929893533, ; 542: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9606216591333276305, ; 543: es\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x8550231809e23a91 => 414
	i64 9659729154652888475, ; 544: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 545: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 546: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 547: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 288
	i64 9682672435579207921, ; 548: sv\Humanizer.resources => 0x865fc347772a40f1 => 389
	i64 9702891218465930390, ; 549: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9773637193738963987, ; 550: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 491
	i64 9776521250654317172, ; 551: tr\Microsoft.CodeAnalysis.Scripting.resources => 0x87ad2e477c4eea74 => 474
	i64 9780093022148426479, ; 552: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 338
	i64 9808614125178078768, ; 553: es\Microsoft.CodeAnalysis.Features.resources.dll => 0x881f32941e1e4630 => 453
	i64 9808709177481450983, ; 554: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9815966120248698980, ; 555: it\Microsoft.CodeAnalysis.resources => 0x8839512ddcb16864 => 403
	i64 9819168441846169364, ; 556: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 220
	i64 9825649861376906464, ; 557: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 285
	i64 9834056768316610435, ; 558: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 559: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9864374015518639636, ; 560: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 177
	i64 9865124420436172353, ; 561: cs\Microsoft.CodeAnalysis.Scripting.resources => 0x88e7f66489211e41 => 464
	i64 9907349773706910547, ; 562: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 298
	i64 9933555792566666578, ; 563: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9954767608854229140, ; 564: pl\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x8a267065cb523094 => 445
	i64 9956195530459977388, ; 565: Microsoft.Maui => 0x8a2b8315b36616ac => 226
	i64 9956796922710453736, ; 566: fr\Microsoft.CodeAnalysis.Features.resources => 0x8a2da60c3edbede8 => 454
	i64 9959489431142554298, ; 567: System.CodeDom => 0x8a3736deb7825aba => 250
	i64 9974604633896246661, ; 568: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10017511394021241210, ; 569: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 212
	i64 10038780035334861115, ; 570: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10049750028500509718, ; 571: cs\Microsoft.CodeAnalysis.Workspaces.resources => 0x8b77e267b23ea416 => 477
	i64 10051358222726253779, ; 572: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 573: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 574: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 575: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 224
	i64 10105485790837105934, ; 576: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10118064984325276963, ; 577: pt-BR\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0x8c6a967ed506c523 => 446
	i64 10137402534451296909, ; 578: nb\Humanizer.resources => 0x8caf49e5131d3a8d => 378
	i64 10143853363526200146, ; 579: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 493
	i64 10209869394718195525, ; 580: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 509
	i64 10226222362177979215, ; 581: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 347
	i64 10229024438826829339, ; 582: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 292
	i64 10236703004850800690, ; 583: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 584: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 585: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 344
	i64 10347389959537838075, ; 586: ru\Microsoft.CodeAnalysis.resources => 0x8f9950586ab247fb => 408
	i64 10356409254419335618, ; 587: ru\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x8fb95b58a63b89c2 => 447
	i64 10360651442923773544, ; 588: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 589: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 590: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 330
	i64 10389735884413426201, ; 591: fr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x902fc1bd5c975a19 => 441
	i64 10406448008575299332, ; 592: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 350
	i64 10426284384445314437, ; 593: es\Microsoft.CodeAnalysis.resources => 0x90b19a682610b585 => 401
	i64 10430153318873392755, ; 594: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 289
	i64 10447083246144586668, ; 595: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 181
	i64 10448061532586656644, ; 596: System.Composition.Convention.dll => 0x90fef89b91404384 => 252
	i64 10482770130019698767, ; 597: Microsoft.CodeAnalysis.Elfie.dll => 0x917a47e4a5e6484f => 189
	i64 10503238815856555353, ; 598: ko\Microsoft.CodeAnalysis.resources => 0x91c3000df2397559 => 405
	i64 10506226065143327199, ; 599: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 491
	i64 10546663366131771576, ; 600: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 601: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10594543503677136954, ; 602: it\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9307612f2e19203a => 416
	i64 10595762989148858956, ; 603: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 604: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10683527105087224481, ; 605: ja\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0x9443834c5efb3aa1 => 430
	i64 10693597305048523572, ; 606: NuGet.ProjectModel.dll => 0x94674a17827de334 => 247
	i64 10714184849103829812, ; 607: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10735666205189739615, ; 608: zh-Hant\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x94fcbf889b80145f => 489
	i64 10750266327252719373, ; 609: ru\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x95309e446cbdd70d => 486
	i64 10761706286639228993, ; 610: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 523
	i64 10764062273958828890, ; 611: it\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0x9561a19b937fdb5a => 442
	i64 10785150219063592792, ; 612: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10792377569642280590, ; 613: ko\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x95c63a38186bf68e => 418
	i64 10811915265162633087, ; 614: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 199
	i64 10822644899632537592, ; 615: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 616: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10831054960469279823, ; 617: da\Humanizer.resources.dll => 0x964fa319e581044f => 357
	i64 10839431236348706757, ; 618: Microsoft.VisualStudio.Web.CodeGeneration.Core => 0x966d654799d67fc5 => 232
	i64 10847732767863316357, ; 619: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 279
	i64 10881928253345575956, ; 620: de\Microsoft.CodeAnalysis.Scripting.resources => 0x970460176bf33414 => 465
	i64 10889380495983713167, ; 621: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 194
	i64 10899834349646441345, ; 622: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 623: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 624: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10972388274974066310, ; 625: Microsoft.AspNetCore.Razor.Language => 0x9845c1007b7d8686 => 180
	i64 10983330919203878381, ; 626: fr\Humanizer.resources.dll => 0x986ca14761b635ed => 363
	i64 10984851517705895286, ; 627: cs\Microsoft.CodeAnalysis.Features.resources.dll => 0x987208414f453d76 => 451
	i64 11002576679268595294, ; 628: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 211
	i64 11009005086950030778, ; 629: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 226
	i64 11019817191295005410, ; 630: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 276
	i64 11023048688141570732, ; 631: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 632: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11047101296015504039, ; 633: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 238
	i64 11067960147806077617, ; 634: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources => 0x99994b1d262942b1 => 476
	i64 11071824625609515081, ; 635: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 342
	i64 11103970607964515343, ; 636: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 502
	i64 11136029745144976707, ; 637: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 340
	i64 11147920560916108509, ; 638: ja\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0x9ab55eaf99ad94dd => 482
	i64 11156122287428000958, ; 639: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 517
	i64 11157797727133427779, ; 640: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 498
	i64 11162124722117608902, ; 641: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 335
	i64 11188319605227840848, ; 642: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 643: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 505
	i64 11226290749488709958, ; 644: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 213
	i64 11235648312900863002, ; 645: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11283982282067550951, ; 646: zh-Hant\Humanizer.resources.dll => 0x9c98c219b67022e7 => 398
	i64 11310472084498560282, ; 647: it\Microsoft.CodeAnalysis.resources.dll => 0x9cf6de6f7682351a => 403
	i64 11322957309738927550, ; 648: mt\Humanizer.resources => 0x9d2339ae7de6c5be => 377
	i64 11329751333533450475, ; 649: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 650: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 291
	i64 11341245327015630248, ; 651: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 256
	i64 11347436699239206956, ; 652: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11360002426691694192, ; 653: cs\Microsoft.CodeAnalysis.CSharp.resources.dll => 0x9da6d604ea88ae70 => 412
	i64 11392833485892708388, ; 654: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 320
	i64 11432101114902388181, ; 655: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11443192662959930495, ; 656: es\Humanizer.resources.dll => 0x9ece63192c153c7f => 360
	i64 11446671985764974897, ; 657: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 658: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 659: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11506022881355894879, ; 660: it\Microsoft.CodeAnalysis.Scripting.resources.dll => 0x9fad9ad95cbc105f => 468
	i64 11508496261504176197, ; 661: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 301
	i64 11513602507638267977, ; 662: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 260
	i64 11517440453979132662, ; 663: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 217
	i64 11518296021396496455, ; 664: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 503
	i64 11527137748606195310, ; 665: Mono.TextTemplating.dll => 0x9ff89eb57eab166e => 239
	i64 11529969570048099689, ; 666: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 335
	i64 11530120875411095857, ; 667: th-TH\Humanizer.resources.dll => 0xa00337d8d431c131 => 390
	i64 11530571088791430846, ; 668: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 210
	i64 11564861549255168062, ; 669: Microsoft.CodeAnalysis.dll => 0xa07ea44e47ed903e => 185
	i64 11580057168383206117, ; 670: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 274
	i64 11591352189662810718, ; 671: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 328
	i64 11597308262950669618, ; 672: Microsoft.Extensions.Identity.Core.dll => 0xa0f1ea6b83e08d32 => 208
	i64 11597940890313164233, ; 673: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11622657603305904499, ; 674: Microsoft.Extensions.Identity.Stores => 0xa14bf982bf0a9973 => 209
	i64 11672361001936329215, ; 675: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 302
	i64 11674412572205198830, ; 676: it\Microsoft.CodeAnalysis.Scripting.resources => 0xa203d86177a52dee => 468
	i64 11691353810037938030, ; 677: pl\Microsoft.CodeAnalysis.resources => 0xa2400858c6b8976e => 406
	i64 11692977985522001935, ; 678: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 679: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11733105267584923319, ; 680: zh-Hans\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xa2d45d1382a9f6b7 => 436
	i64 11743665907891708234, ; 681: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11775736028400734260, ; 682: tr\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xa36bd186fd985034 => 474
	i64 11814896823651168648, ; 683: ro\Humanizer.resources.dll => 0xa3f6f210279e7188 => 383
	i64 11851835839753101194, ; 684: Microsoft.CodeAnalysis.CSharp.Workspaces.dll => 0xa47a2de70cba1f8a => 188
	i64 11855031688536399763, ; 685: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 520
	i64 11918619261036226777, ; 686: cs\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa5677112033168d9 => 477
	i64 11991047634523762324, ; 687: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 688: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 265
	i64 12040886584167504988, ; 689: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 690: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 691: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 692: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 693: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12123554842037000992, ; 694: tr\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xa83f84e53e951b20 => 487
	i64 12131140937409964993, ; 695: ru\Microsoft.CodeAnalysis.Features.resources => 0xa85a7868b6852bc1 => 460
	i64 12137774235383566651, ; 696: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 332
	i64 12145679461940342714, ; 697: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 698: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 268
	i64 12198439281774268251, ; 699: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 221
	i64 12201331334810686224, ; 700: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 701: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 702: System.IO.Pipelines => 0xaae1de2e1c17f00a => 260
	i64 12332222936682028543, ; 703: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 704: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12405905830338390985, ; 705: ja\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xac2aa19f96446bc9 => 430
	i64 12439275739440478309, ; 706: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 218
	i64 12451044538927396471, ; 707: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 300
	i64 12466513435562512481, ; 708: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 314
	i64 12475113361194491050, ; 709: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 524
	i64 12487638416075308985, ; 710: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 294
	i64 12493213219680520345, ; 711: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 194
	i64 12517810545449516888, ; 712: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 713: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 282
	i64 12550732019250633519, ; 714: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12619191878741427339, ; 715: de\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xaf20602784e0848b => 439
	i64 12690486463116955105, ; 716: NuGet.Configuration.dll => 0xb01daa337cfd4de1 => 242
	i64 12699999919562409296, ; 717: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 718: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 283
	i64 12708238894395270091, ; 719: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 720: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 721: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12726057104018228727, ; 722: Microsoft.NET.StringTools => 0xb09c0982b457c5f7 => 229
	i64 12742166704152928552, ; 723: Microsoft.CodeAnalysis.Razor.dll => 0xb0d5451b45d86128 => 191
	i64 12753841065332862057, ; 724: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 337
	i64 12822330414412999099, ; 725: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources => 0xb1f2119387c629bb => 424
	i64 12828192437253469131, ; 726: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 348
	i64 12835242264250840079, ; 727: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12835543923467107475, ; 728: pt-BR\Microsoft.CodeAnalysis.resources => 0xb2210331592e3c93 => 407
	i64 12843321153144804894, ; 729: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 214
	i64 12843770487262409629, ; 730: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 731: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12860889322320594667, ; 732: dotnet-aspnet-codegenerator-design => 0xb27b0eb2e08886eb => 233
	i64 12963446364377008305, ; 733: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 258
	i64 12982280885948128408, ; 734: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 293
	i64 12989346753972519995, ; 735: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 490
	i64 12991459499837607210, ; 736: Microsoft.CodeAnalysis => 0xb44aef9559b1cd2a => 185
	i64 13005833372463390146, ; 737: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 511
	i64 13068258254871114833, ; 738: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13126023683090012938, ; 739: System.Composition.TypedParts.dll => 0xb62900febff1db0a => 255
	i64 13129914918964716986, ; 740: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 297
	i64 13161648197185303412, ; 741: ru\Microsoft.CodeAnalysis.Workspaces.resources => 0xb6a7914d4be3f374 => 486
	i64 13162471042547327635, ; 742: System.Security.Permissions => 0xb6aa7dace9662293 => 266
	i64 13166897321255124987, ; 743: ko\Microsoft.CodeAnalysis.CSharp.resources => 0xb6ba375a3b743ffb => 418
	i64 13173818576982874404, ; 744: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13184895541093799161, ; 745: zh-Hant\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb6fa28a3578714f9 => 476
	i64 13191147902838114738, ; 746: it\Microsoft.CodeAnalysis.Features.resources.dll => 0xb7105f20c04e09b2 => 455
	i64 13204198774430501167, ; 747: zh-Hant\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xb73ebcd39594092f => 424
	i64 13219588054769624370, ; 748: es\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xb775694ba18a6532 => 427
	i64 13233222243778831259, ; 749: es\Microsoft.CodeAnalysis.Scripting.resources => 0xb7a5d984a23c239b => 466
	i64 13247471366635968436, ; 750: de\Microsoft.CodeAnalysis.resources.dll => 0xb7d87905147ed7b4 => 400
	i64 13252883958002779332, ; 751: NuGet.Common.dll => 0xb7ebb3be363a84c4 => 241
	i64 13257048157060802935, ; 752: Microsoft.Build.Framework => 0xb7fa7f0f5bdb2977 => 183
	i64 13262938754463820554, ; 753: zh-Hans\Microsoft.CodeAnalysis.Workspaces.resources => 0xb80f6c86f193eb0a => 488
	i64 13286676513096225245, ; 754: hu\Humanizer.resources.dll => 0xb863c1e490a051dd => 367
	i64 13292381562582072947, ; 755: pt-BR\Microsoft.CodeAnalysis.Features.resources.dll => 0xb878069ae8a7fe73 => 459
	i64 13310773016837059531, ; 756: cs\Microsoft.CodeAnalysis.resources.dll => 0xb8b95d890a6d73cb => 399
	i64 13313727712277001502, ; 757: ja\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xb8c3dcd0ae8b751e => 469
	i64 13343850469010654401, ; 758: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 759: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 760: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 499
	i64 13401370062847626945, ; 761: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 332
	i64 13404347523447273790, ; 762: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 287
	i64 13431476299110033919, ; 763: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 764: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 343
	i64 13463706743370286408, ; 765: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 766: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 345
	i64 13491513212026656886, ; 767: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 280
	i64 13502641473732064860, ; 768: System.Composition.AttributedModel => 0xbb6304e15b41b65c => 251
	i64 13540124433173649601, ; 769: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 520
	i64 13553170703867477024, ; 770: Microsoft.CodeAnalysis.Scripting.dll => 0xbc1688f288407c20 => 192
	i64 13572454107664307259, ; 771: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 322
	i64 13577726035533356841, ; 772: sl\Humanizer.resources => 0xbc6dc5e43589df29 => 386
	i64 13578472628727169633, ; 773: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 774: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 775: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 293
	i64 13647894001087880694, ; 776: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 777: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 273
	i64 13702626353344114072, ; 778: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 779: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 780: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 781: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13730336804810551062, ; 782: el\Humanizer.resources => 0xbe8bf493d9346f16 => 359
	i64 13740961536386145404, ; 783: ru\Microsoft.CodeAnalysis.Features.resources.dll => 0xbeb1b3b6f09a1c7c => 460
	i64 13741908991377327229, ; 784: de\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xbeb5116b7ecac47d => 465
	i64 13742054908850494594, ; 785: Azure.Identity => 0xbeb596218df25c82 => 174
	i64 13751991022888427085, ; 786: pl\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xbed8e2f961a01e4d => 484
	i64 13754352728446157994, ; 787: ko\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xbee146eece7544aa => 483
	i64 13768883594457632599, ; 788: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13827721973044326179, ; 789: cs\Microsoft.CodeAnalysis.Features.resources => 0xbfe5efdf402baf23 => 451
	i64 13828521679616088467, ; 790: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 346
	i64 13864745339496195545, ; 791: Microsoft.CodeAnalysis.Workspaces.dll => 0xc069786d7dec65d9 => 193
	i64 13881769479078963060, ; 792: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 793: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 267
	i64 13911222732217019342, ; 794: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 795: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13939962644205322370, ; 796: Microsoft.AspNetCore.Razor.Language.dll => 0xc174b22af612c082 => 180
	i64 13955418299340266673, ; 797: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 207
	i64 13957763705375634936, ; 798: ru\Microsoft.CodeAnalysis.Scripting.resources => 0xc1b3f0237dc135f8 => 473
	i64 13959074834287824816, ; 799: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 300
	i64 14032333893230075068, ; 800: zh-Hant\Microsoft.CodeAnalysis.Features.resources => 0xc2bcdd5453a71cbc => 463
	i64 14075334701871371868, ; 801: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14084551984877988794, ; 802: nb-NO\Humanizer.resources => 0xc3766168372cebba => 379
	i64 14102632621176723282, ; 803: Microsoft.VisualStudio.Web.CodeGeneration.Templating.dll => 0xc3b69da667131752 => 235
	i64 14108485179889227694, ; 804: sk\Humanizer.resources.dll => 0xc3cb68856a2917ae => 385
	i64 14124974489674258913, ; 805: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 282
	i64 14125464355221830302, ; 806: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 807: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 197
	i64 14147751692859242126, ; 808: ru\Humanizer.resources => 0xc456e934e74e768e => 384
	i64 14177026328031998476, ; 809: sk\Humanizer.resources => 0xc4beea550db5320c => 385
	i64 14178052285788134900, ; 810: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 269
	i64 14212104595480609394, ; 811: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 812: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 813: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 814: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 815: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14258050503687732042, ; 816: zh-Hant\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xc5dec56405e2fb4a => 450
	i64 14261073672896646636, ; 817: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 320
	i64 14293202716295135330, ; 818: it\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xc65ba8244f6b8062 => 429
	i64 14298246716367104064, ; 819: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 820: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 821: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 822: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 270
	i64 14336022690333166993, ; 823: ko-KR\Humanizer.resources.dll => 0xc6f3c8ae6d3f8d91 => 373
	i64 14346402571976470310, ; 824: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 825: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 513
	i64 14388314743592357201, ; 826: he\Humanizer.resources.dll => 0xc7ad9006d8568d51 => 365
	i64 14461014870687870182, ; 827: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14461643095315121028, ; 828: it\Humanizer.resources => 0xc8b213c62cbd0384 => 371
	i64 14464374589798375073, ; 829: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 514
	i64 14486659737292545672, ; 830: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 305
	i64 14491877563792607819, ; 831: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 522
	i64 14495724990987328804, ; 832: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 323
	i64 14551742072151931844, ; 833: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14558829797982847683, ; 834: pl\Microsoft.CodeAnalysis.resources.dll => 0xca0b5a90b623c2c3 => 406
	i64 14561513370130550166, ; 835: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14571600089685354543, ; 836: ja\Microsoft.CodeAnalysis.Features.resources.dll => 0xca38b913f2bee82f => 456
	i64 14574160591280636898, ; 837: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14603685918205544701, ; 838: es\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xcaaab6f80e0408fd => 479
	i64 14610046442689856844, ; 839: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 492
	i64 14622043554576106986, ; 840: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 841: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 315
	i64 14648804764802849406, ; 842: Azure.Identity.dll => 0xcb4b0252261f9a7e => 174
	i64 14669215534098758659, ; 843: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 205
	i64 14687496268954629644, ; 844: tr\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xcbd47809f6ea760c => 448
	i64 14690985099581930927, ; 845: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 846: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 506
	i64 14715764521194861350, ; 847: fr\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xcc38e5dd541db326 => 428
	i64 14734270797510799600, ; 848: ru\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xcc7aa5398e0af0f0 => 434
	i64 14735017007120366644, ; 849: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 505
	i64 14744092281598614090, ; 850: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 522
	i64 14792063746108907174, ; 851: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 343
	i64 14832630590065248058, ; 852: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 853: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 291
	i64 14889905118082851278, ; 854: GoogleGson.dll => 0xcea391d0969961ce => 175
	i64 14904040806490515477, ; 855: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 490
	i64 14912225920358050525, ; 856: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 857: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 858: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 206
	i64 14971762707707811983, ; 859: lv\Humanizer.resources.dll => 0xcfc662dbde5d588f => 375
	i64 14971923049666773358, ; 860: it\Microsoft.CodeAnalysis.Features.resources => 0xcfc6f4b063df016e => 455
	i64 14973015887391301737, ; 861: fr\Microsoft.CodeAnalysis.Scripting.resources => 0xcfcad69e803d2069 => 467
	i64 14984936317414011727, ; 862: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 863: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 864: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 294
	i64 15015154896917945444, ; 865: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 866: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 867: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 868: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 869: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 507
	i64 15115185479366240210, ; 870: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 871: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 872: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 217
	i64 15150743910298169673, ; 873: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 321
	i64 15195733091524337868, ; 874: ja\Microsoft.CodeAnalysis.resources => 0xd2e216bc7df4e0cc => 404
	i64 15203009853192377507, ; 875: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 512
	i64 15227001540531775957, ; 876: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 204
	i64 15234459843334988256, ; 877: ru\Humanizer.resources.dll => 0xd36bac830aef61e0 => 384
	i64 15234786388537674379, ; 878: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15240486395757881428, ; 879: ja\Humanizer.resources => 0xd38115a11f526854 => 372
	i64 15250465174479574862, ; 880: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 881: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 284
	i64 15279429628684179188, ; 882: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 349
	i64 15299439993936780255, ; 883: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15300862763834473199, ; 884: System.Composition.Hosting.dll => 0xd457959dc35afaef => 253
	i64 15338463749992804988, ; 885: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15352427450275134006, ; 886: System.Composition.Runtime.dll => 0xd50ec76ce59afa36 => 254
	i64 15370334346939861994, ; 887: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 289
	i64 15383240894167415497, ; 888: System.Memory.Data => 0xd57c4016df1c7ac9 => 261
	i64 15391712275433856905, ; 889: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 206
	i64 15471025662701294488, ; 890: Microsoft.VisualStudio.Web.CodeGeneration.Utils.dll => 0xd6b41fdf08435398 => 236
	i64 15475196252089753159, ; 891: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 257
	i64 15526743539506359484, ; 892: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 893: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 894: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 895: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 494
	i64 15541854775306130054, ; 896: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 897: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 898: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 313
	i64 15609085926864131306, ; 899: System.dll => 0xd89e9cf3334914ea => 164
	i64 15620595871140898079, ; 900: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 207
	i64 15661133872274321916, ; 901: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 902: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15755368083429170162, ; 903: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 904: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 327
	i64 15783653065526199428, ; 905: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 495
	i64 15817206913877585035, ; 906: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 907: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15878195890548581965, ; 908: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources => 0xdc5aaf094237264d => 449
	i64 15885744048853936810, ; 909: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 910: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 223
	i64 15934062614519587357, ; 911: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 912: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 913: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15964926172722689846, ; 914: hu\Humanizer.resources => 0xdd8ecfc4ae78f736 => 367
	i64 15971679995444160383, ; 915: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 15988046219977098995, ; 916: id\Humanizer.resources.dll => 0xdde0f3542a4306f3 => 369
	i64 16018552496348375205, ; 917: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 918: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 919: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 514
	i64 16107572299479706728, ; 920: pt\Humanizer.resources.dll => 0xdf8997aa3068ec68 => 382
	i64 16148621927384773086, ; 921: cs\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xe01b6e1579da71de => 438
	i64 16154507427712707110, ; 922: System => 0xe03056ea4e39aa26 => 164
	i64 16185160156379463841, ; 923: sl\Humanizer.resources.dll => 0xe09d3d68d9cdc0a1 => 386
	i64 16219561732052121626, ; 924: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16270510675159710935, ; 925: ja\Microsoft.CodeAnalysis.resources.dll => 0xe1cc774113187cd7 => 404
	i64 16287915403742224639, ; 926: it\Microsoft.CodeAnalysis.Workspaces.resources.dll => 0xe20a4cc33bab20ff => 481
	i64 16288847719894691167, ; 927: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 508
	i64 16313030114241086891, ; 928: ja\Microsoft.CodeAnalysis.Scripting.resources => 0xe2638675719705ab => 469
	i64 16315482530584035869, ; 929: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 930: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 211
	i64 16337011941688632206, ; 931: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 932: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 299
	i64 16404675382673142372, ; 933: uz-Latn-UZ\Humanizer.resources.dll => 0xe3a91d5847d3f264 => 394
	i64 16416586957282382396, ; 934: ko\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xe3d36edbdd20923c => 470
	i64 16423015068819898779, ; 935: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 348
	i64 16454459195343277943, ; 936: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 937: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16533548349183570019, ; 938: NuGet.Common => 0xe572f6a005d53063 => 241
	i64 16558294117798643464, ; 939: uz-Latn-UZ\Humanizer.resources => 0xe5cae0c541d40708 => 394
	i64 16573490312900569789, ; 940: zh-Hans\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xe600dda124d0eabd => 423
	i64 16582434033142728747, ; 941: Microsoft.NET.StringTools.dll => 0xe620a3e548d2082b => 229
	i64 16587349424426152616, ; 942: zh-Hans\Microsoft.CodeAnalysis.Scripting.resources.dll => 0xe6321a6b003372a8 => 475
	i64 16589693266713801121, ; 943: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 312
	i64 16621146507174665210, ; 944: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 286
	i64 16626488797933785693, ; 945: pt-BR\Microsoft.CodeAnalysis.Features.resources => 0xe6bd277886dad25d => 459
	i64 16643194905613199096, ; 946: System.Composition.Runtime => 0xe6f8819654aa66f8 => 254
	i64 16649148416072044166, ; 947: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 228
	i64 16677317093839702854, ; 948: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 319
	i64 16702652415771857902, ; 949: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 950: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 951: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 952: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 953: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 954: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16783012334401147854, ; 955: af\Humanizer.resources => 0xe8e93ccc44fad3ce => 351
	i64 16803648858859583026, ; 956: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 507
	i64 16817690021300390726, ; 957: fr\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xe9646ff86e3dcb46 => 428
	i64 16822611501064131242, ; 958: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 959: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 960: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16884536815023549305, ; 961: bn-BD\Humanizer.resources => 0xea51ecc6707beb79 => 355
	i64 16890310621557459193, ; 962: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16899091755757876651, ; 963: he\Humanizer.resources => 0xea85a26aa8ae35ab => 365
	i64 16933958494752847024, ; 964: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 965: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 515
	i64 16945858842201062480, ; 966: Azure.Core => 0xeb2bc8d57f4e7c50 => 173
	i64 16956605162877593346, ; 967: fr-BE\Humanizer.resources.dll => 0xeb51f68e41dfa702 => 364
	i64 16977952268158210142, ; 968: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16987813465531077541, ; 969: fi-FI\Humanizer.resources.dll => 0xebc0d6577393d3a5 => 362
	i64 16989020923549080504, ; 970: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 312
	i64 16998075588627545693, ; 971: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 317
	i64 17008137082415910100, ; 972: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 973: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 275
	i64 17031295164305207763, ; 974: Microsoft.CodeAnalysis.Features => 0xec5b50b75d3d71d3 => 190
	i64 17031351772568316411, ; 975: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 316
	i64 17037200463775726619, ; 976: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 303
	i64 17039544999576254074, ; 977: Microsoft.CodeAnalysis.AnalyzerUtilities => 0xec789fe5d206b67a => 184
	i64 17062143951396181894, ; 978: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17118171214553292978, ; 979: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17137864900836977098, ; 980: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 222
	i64 17164834558324733651, ; 981: is\Humanizer.resources.dll => 0xee35be166d4b76d3 => 370
	i64 17187273293601214786, ; 982: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 983: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 216
	i64 17201328579425343169, ; 984: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 985: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 986: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 510
	i64 17230721278011714856, ; 987: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 988: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 989: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17310278548634113468, ; 990: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 500
	i64 17333249706306540043, ; 991: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 992: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 993: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 500
	i64 17360349973592121190, ; 994: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 341
	i64 17371436720558481852, ; 995: System.Runtime.Caching => 0xf113bda8d710a1bc => 263
	i64 17373701575325078811, ; 996: nl\Humanizer.resources => 0xf11bc9886ee5551b => 380
	i64 17470386307322966175, ; 997: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 998: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 999: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 498
	i64 17522591619082469157, ; 1000: GoogleGson => 0xf32cc03d27a5bf25 => 175
	i64 17523946658117960076, ; 1001: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 265
	i64 17540901887276648245, ; 1002: zh-Hans\Humanizer.resources.dll => 0xf36dcd54af1a8735 => 397
	i64 17565043795550961167, ; 1003: pl\Microsoft.CodeAnalysis.Scripting.resources => 0xf3c39244b9fe7e0f => 471
	i64 17586418995763329665, ; 1004: pl\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf40f82e659a7ba81 => 419
	i64 17590473451926037903, ; 1005: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 268
	i64 17623389608345532001, ; 1006: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 510
	i64 17627500474728259406, ; 1007: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17668140706752364209, ; 1008: Microsoft.DiaSymReader => 0xf531d85ceb97feb1 => 195
	i64 17685921127322830888, ; 1009: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17696897804768271485, ; 1010: zh-Hans\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xf59802ca8f9a5c7d => 449
	i64 17704177640604968747, ; 1011: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 314
	i64 17710060891934109755, ; 1012: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 311
	i64 17712670374920797664, ; 1013: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17743407583038752114, ; 1014: System.CodeDom.dll => 0xf63d3f302bff4572 => 250
	i64 17777860260071588075, ; 1015: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 1016: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 219
	i64 17798314319870884251, ; 1017: zh-Hans\Microsoft.CodeAnalysis.resources.dll => 0xf70050930ca6f99b => 410
	i64 17827813215687577648, ; 1018: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 501
	i64 17836660441126018656, ; 1019: ja\Humanizer.resources.dll => 0xf7888c2b24941e60 => 372
	i64 17838668724098252521, ; 1020: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17882545204693222992, ; 1021: tr\Microsoft.CodeAnalysis.CSharp.resources.dll => 0xf82b901e2d9ac650 => 422
	i64 17891337867145587222, ; 1022: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 344
	i64 17910264068556501837, ; 1023: Microsoft.Extensions.Identity.Core => 0xf88e0a4717c0b34d => 208
	i64 17922362651809318980, ; 1024: de\Microsoft.CodeAnalysis.CSharp.Workspaces.resources.dll => 0xf8b905e004d28844 => 439
	i64 17928294245072900555, ; 1025: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 1026: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 494
	i64 17992315986609351877, ; 1027: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 17992626610390966489, ; 1028: ko\Microsoft.CodeAnalysis.CSharp.Features.resources.dll => 0xf9b2a692b89820d9 => 431
	i64 18017743553296241350, ; 1029: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 201
	i64 18025913125965088385, ; 1030: System.Threading => 0xfa28e87b91334681 => 148
	i64 18116111925905154859, ; 1031: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 280
	i64 18121036031235206392, ; 1032: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 316
	i64 18146411883821974900, ; 1033: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 1034: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18190621259184097416, ; 1035: cs\Microsoft.CodeAnalysis.CSharp.Features.resources => 0xfc7211a83d564888 => 425
	i64 18203743254473369877, ; 1036: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 264
	i64 18225059387460068507, ; 1037: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 1038: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 1039: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 297
	i64 18289698835141844372, ; 1040: Microsoft.CodeAnalysis.AnalyzerUtilities.dll => 0xfdd2103005815d94 => 184
	i64 18305135509493619199, ; 1041: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 318
	i64 18318849532986632368, ; 1042: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 1043: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 504
	i64 18338427488326303160, ; 1044: NuGet.LibraryModel => 0xfe7f2ea3b4f2bdb8 => 245
	i64 18342408478508122430, ; 1045: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 503
	i64 18358161419737137786, ; 1046: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 499
	i64 18365503706650766700, ; 1047: ar\Humanizer.resources.dll => 0xfedf60510c09ed6c => 352
	i64 18380184030268848184, ; 1048: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 334
	i64 18439108438687598470 ; 1049: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1050 x i32] [
	i32 296, ; 0
	i32 356, ; 1
	i32 354, ; 2
	i32 214, ; 3
	i32 171, ; 4
	i32 227, ; 5
	i32 441, ; 6
	i32 176, ; 7
	i32 58, ; 8
	i32 283, ; 9
	i32 440, ; 10
	i32 151, ; 11
	i32 324, ; 12
	i32 245, ; 13
	i32 327, ; 14
	i32 396, ; 15
	i32 290, ; 16
	i32 408, ; 17
	i32 132, ; 18
	i32 191, ; 19
	i32 427, ; 20
	i32 56, ; 21
	i32 326, ; 22
	i32 479, ; 23
	i32 425, ; 24
	i32 247, ; 25
	i32 95, ; 26
	i32 370, ; 27
	i32 186, ; 28
	i32 309, ; 29
	i32 0, ; 30
	i32 129, ; 31
	i32 215, ; 32
	i32 258, ; 33
	i32 437, ; 34
	i32 395, ; 35
	i32 244, ; 36
	i32 237, ; 37
	i32 145, ; 38
	i32 387, ; 39
	i32 376, ; 40
	i32 284, ; 41
	i32 18, ; 42
	i32 502, ; 43
	i32 450, ; 44
	i32 295, ; 45
	i32 310, ; 46
	i32 183, ; 47
	i32 462, ; 48
	i32 230, ; 49
	i32 150, ; 50
	i32 104, ; 51
	i32 412, ; 52
	i32 95, ; 53
	i32 243, ; 54
	i32 392, ; 55
	i32 173, ; 56
	i32 339, ; 57
	i32 417, ; 58
	i32 481, ; 59
	i32 36, ; 60
	i32 200, ; 61
	i32 0, ; 62
	i32 28, ; 63
	i32 279, ; 64
	i32 235, ; 65
	i32 317, ; 66
	i32 50, ; 67
	i32 115, ; 68
	i32 70, ; 69
	i32 426, ; 70
	i32 224, ; 71
	i32 416, ; 72
	i32 65, ; 73
	i32 170, ; 74
	i32 145, ; 75
	i32 338, ; 76
	i32 411, ; 77
	i32 249, ; 78
	i32 429, ; 79
	i32 278, ; 80
	i32 313, ; 81
	i32 303, ; 82
	i32 177, ; 83
	i32 40, ; 84
	i32 446, ; 85
	i32 89, ; 86
	i32 81, ; 87
	i32 240, ; 88
	i32 66, ; 89
	i32 435, ; 90
	i32 62, ; 91
	i32 86, ; 92
	i32 277, ; 93
	i32 106, ; 94
	i32 496, ; 95
	i32 324, ; 96
	i32 102, ; 97
	i32 181, ; 98
	i32 35, ; 99
	i32 274, ; 100
	i32 518, ; 101
	i32 326, ; 102
	i32 225, ; 103
	i32 413, ; 104
	i32 480, ; 105
	i32 186, ; 106
	i32 119, ; 107
	i32 311, ; 108
	i32 432, ; 109
	i32 142, ; 110
	i32 141, ; 111
	i32 347, ; 112
	i32 234, ; 113
	i32 190, ; 114
	i32 53, ; 115
	i32 35, ; 116
	i32 141, ; 117
	i32 240, ; 118
	i32 271, ; 119
	i32 281, ; 120
	i32 440, ; 121
	i32 198, ; 122
	i32 212, ; 123
	i32 422, ; 124
	i32 295, ; 125
	i32 262, ; 126
	i32 485, ; 127
	i32 8, ; 128
	i32 14, ; 129
	i32 323, ; 130
	i32 51, ; 131
	i32 221, ; 132
	i32 399, ; 133
	i32 306, ; 134
	i32 136, ; 135
	i32 101, ; 136
	i32 393, ; 137
	i32 196, ; 138
	i32 236, ; 139
	i32 371, ; 140
	i32 244, ; 141
	i32 288, ; 142
	i32 333, ; 143
	i32 116, ; 144
	i32 402, ; 145
	i32 272, ; 146
	i32 263, ; 147
	i32 398, ; 148
	i32 163, ; 149
	i32 517, ; 150
	i32 179, ; 151
	i32 222, ; 152
	i32 166, ; 153
	i32 67, ; 154
	i32 205, ; 155
	i32 492, ; 156
	i32 252, ; 157
	i32 80, ; 158
	i32 357, ; 159
	i32 366, ; 160
	i32 471, ; 161
	i32 101, ; 162
	i32 328, ; 163
	i32 218, ; 164
	i32 117, ; 165
	i32 255, ; 166
	i32 256, ; 167
	i32 475, ; 168
	i32 497, ; 169
	i32 340, ; 170
	i32 358, ; 171
	i32 182, ; 172
	i32 388, ; 173
	i32 437, ; 174
	i32 182, ; 175
	i32 405, ; 176
	i32 78, ; 177
	i32 339, ; 178
	i32 114, ; 179
	i32 121, ; 180
	i32 48, ; 181
	i32 232, ; 182
	i32 375, ; 183
	i32 433, ; 184
	i32 397, ; 185
	i32 238, ; 186
	i32 176, ; 187
	i32 458, ; 188
	i32 409, ; 189
	i32 128, ; 190
	i32 444, ; 191
	i32 304, ; 192
	i32 363, ; 193
	i32 353, ; 194
	i32 275, ; 195
	i32 82, ; 196
	i32 110, ; 197
	i32 75, ; 198
	i32 350, ; 199
	i32 234, ; 200
	i32 259, ; 201
	i32 227, ; 202
	i32 53, ; 203
	i32 243, ; 204
	i32 330, ; 205
	i32 203, ; 206
	i32 69, ; 207
	i32 366, ; 208
	i32 351, ; 209
	i32 329, ; 210
	i32 202, ; 211
	i32 83, ; 212
	i32 172, ; 213
	i32 512, ; 214
	i32 116, ; 215
	i32 360, ; 216
	i32 391, ; 217
	i32 204, ; 218
	i32 156, ; 219
	i32 203, ; 220
	i32 269, ; 221
	i32 167, ; 222
	i32 322, ; 223
	i32 296, ; 224
	i32 368, ; 225
	i32 377, ; 226
	i32 462, ; 227
	i32 210, ; 228
	i32 32, ; 229
	i32 225, ; 230
	i32 122, ; 231
	i32 72, ; 232
	i32 62, ; 233
	i32 253, ; 234
	i32 161, ; 235
	i32 113, ; 236
	i32 368, ; 237
	i32 192, ; 238
	i32 493, ; 239
	i32 88, ; 240
	i32 223, ; 241
	i32 381, ; 242
	i32 523, ; 243
	i32 466, ; 244
	i32 105, ; 245
	i32 18, ; 246
	i32 472, ; 247
	i32 146, ; 248
	i32 118, ; 249
	i32 58, ; 250
	i32 290, ; 251
	i32 436, ; 252
	i32 17, ; 253
	i32 52, ; 254
	i32 380, ; 255
	i32 401, ; 256
	i32 92, ; 257
	i32 473, ; 258
	i32 257, ; 259
	i32 196, ; 260
	i32 518, ; 261
	i32 438, ; 262
	i32 55, ; 263
	i32 461, ; 264
	i32 129, ; 265
	i32 389, ; 266
	i32 152, ; 267
	i32 41, ; 268
	i32 364, ; 269
	i32 199, ; 270
	i32 92, ; 271
	i32 435, ; 272
	i32 198, ; 273
	i32 402, ; 274
	i32 334, ; 275
	i32 262, ; 276
	i32 387, ; 277
	i32 179, ; 278
	i32 50, ; 279
	i32 162, ; 280
	i32 480, ; 281
	i32 13, ; 282
	i32 308, ; 283
	i32 358, ; 284
	i32 447, ; 285
	i32 272, ; 286
	i32 329, ; 287
	i32 36, ; 288
	i32 67, ; 289
	i32 388, ; 290
	i32 383, ; 291
	i32 231, ; 292
	i32 109, ; 293
	i32 508, ; 294
	i32 516, ; 295
	i32 273, ; 296
	i32 433, ; 297
	i32 99, ; 298
	i32 410, ; 299
	i32 99, ; 300
	i32 482, ; 301
	i32 11, ; 302
	i32 421, ; 303
	i32 381, ; 304
	i32 11, ; 305
	i32 315, ; 306
	i32 25, ; 307
	i32 128, ; 308
	i32 76, ; 309
	i32 307, ; 310
	i32 109, ; 311
	i32 457, ; 312
	i32 454, ; 313
	i32 333, ; 314
	i32 331, ; 315
	i32 106, ; 316
	i32 2, ; 317
	i32 390, ; 318
	i32 26, ; 319
	i32 286, ; 320
	i32 157, ; 321
	i32 516, ; 322
	i32 248, ; 323
	i32 267, ; 324
	i32 21, ; 325
	i32 519, ; 326
	i32 49, ; 327
	i32 452, ; 328
	i32 43, ; 329
	i32 126, ; 330
	i32 276, ; 331
	i32 415, ; 332
	i32 59, ; 333
	i32 119, ; 334
	i32 374, ; 335
	i32 336, ; 336
	i32 419, ; 337
	i32 242, ; 338
	i32 299, ; 339
	i32 285, ; 340
	i32 3, ; 341
	i32 237, ; 342
	i32 305, ; 343
	i32 325, ; 344
	i32 38, ; 345
	i32 420, ; 346
	i32 124, ; 347
	i32 195, ; 348
	i32 470, ; 349
	i32 431, ; 350
	i32 443, ; 351
	i32 448, ; 352
	i32 325, ; 353
	i32 513, ; 354
	i32 137, ; 355
	i32 149, ; 356
	i32 85, ; 357
	i32 90, ; 358
	i32 496, ; 359
	i32 309, ; 360
	i32 524, ; 361
	i32 248, ; 362
	i32 414, ; 363
	i32 443, ; 364
	i32 306, ; 365
	i32 444, ; 366
	i32 415, ; 367
	i32 497, ; 368
	i32 501, ; 369
	i32 369, ; 370
	i32 281, ; 371
	i32 292, ; 372
	i32 442, ; 373
	i32 337, ; 374
	i32 213, ; 375
	i32 249, ; 376
	i32 342, ; 377
	i32 307, ; 378
	i32 378, ; 379
	i32 379, ; 380
	i32 133, ; 381
	i32 487, ; 382
	i32 352, ; 383
	i32 409, ; 384
	i32 96, ; 385
	i32 3, ; 386
	i32 509, ; 387
	i32 105, ; 388
	i32 456, ; 389
	i32 33, ; 390
	i32 154, ; 391
	i32 392, ; 392
	i32 188, ; 393
	i32 158, ; 394
	i32 488, ; 395
	i32 155, ; 396
	i32 484, ; 397
	i32 478, ; 398
	i32 82, ; 399
	i32 461, ; 400
	i32 400, ; 401
	i32 374, ; 402
	i32 393, ; 403
	i32 301, ; 404
	i32 143, ; 405
	i32 87, ; 406
	i32 472, ; 407
	i32 19, ; 408
	i32 302, ; 409
	i32 264, ; 410
	i32 51, ; 411
	i32 354, ; 412
	i32 246, ; 413
	i32 251, ; 414
	i32 271, ; 415
	i32 361, ; 416
	i32 417, ; 417
	i32 61, ; 418
	i32 54, ; 419
	i32 362, ; 420
	i32 4, ; 421
	i32 97, ; 422
	i32 261, ; 423
	i32 270, ; 424
	i32 17, ; 425
	i32 432, ; 426
	i32 155, ; 427
	i32 84, ; 428
	i32 259, ; 429
	i32 463, ; 430
	i32 452, ; 431
	i32 29, ; 432
	i32 45, ; 433
	i32 64, ; 434
	i32 426, ; 435
	i32 434, ; 436
	i32 66, ; 437
	i32 172, ; 438
	i32 310, ; 439
	i32 1, ; 440
	i32 345, ; 441
	i32 504, ; 442
	i32 47, ; 443
	i32 382, ; 444
	i32 24, ; 445
	i32 278, ; 446
	i32 189, ; 447
	i32 187, ; 448
	i32 361, ; 449
	i32 445, ; 450
	i32 453, ; 451
	i32 201, ; 452
	i32 515, ; 453
	i32 483, ; 454
	i32 165, ; 455
	i32 108, ; 456
	i32 458, ; 457
	i32 420, ; 458
	i32 12, ; 459
	i32 304, ; 460
	i32 63, ; 461
	i32 27, ; 462
	i32 23, ; 463
	i32 506, ; 464
	i32 93, ; 465
	i32 478, ; 466
	i32 407, ; 467
	i32 168, ; 468
	i32 12, ; 469
	i32 349, ; 470
	i32 187, ; 471
	i32 413, ; 472
	i32 216, ; 473
	i32 228, ; 474
	i32 231, ; 475
	i32 29, ; 476
	i32 103, ; 477
	i32 14, ; 478
	i32 355, ; 479
	i32 467, ; 480
	i32 126, ; 481
	i32 521, ; 482
	i32 287, ; 483
	i32 319, ; 484
	i32 91, ; 485
	i32 308, ; 486
	i32 178, ; 487
	i32 209, ; 488
	i32 266, ; 489
	i32 246, ; 490
	i32 230, ; 491
	i32 9, ; 492
	i32 86, ; 493
	i32 391, ; 494
	i32 298, ; 495
	i32 331, ; 496
	i32 395, ; 497
	i32 71, ; 498
	i32 168, ; 499
	i32 1, ; 500
	i32 318, ; 501
	i32 5, ; 502
	i32 511, ; 503
	i32 44, ; 504
	i32 359, ; 505
	i32 27, ; 506
	i32 423, ; 507
	i32 457, ; 508
	i32 489, ; 509
	i32 346, ; 510
	i32 356, ; 511
	i32 233, ; 512
	i32 485, ; 513
	i32 158, ; 514
	i32 321, ; 515
	i32 112, ; 516
	i32 215, ; 517
	i32 239, ; 518
	i32 353, ; 519
	i32 521, ; 520
	i32 220, ; 521
	i32 202, ; 522
	i32 121, ; 523
	i32 197, ; 524
	i32 193, ; 525
	i32 396, ; 526
	i32 421, ; 527
	i32 336, ; 528
	i32 373, ; 529
	i32 277, ; 530
	i32 495, ; 531
	i32 464, ; 532
	i32 219, ; 533
	i32 376, ; 534
	i32 411, ; 535
	i32 159, ; 536
	i32 200, ; 537
	i32 178, ; 538
	i32 519, ; 539
	i32 131, ; 540
	i32 341, ; 541
	i32 57, ; 542
	i32 414, ; 543
	i32 138, ; 544
	i32 83, ; 545
	i32 30, ; 546
	i32 288, ; 547
	i32 389, ; 548
	i32 10, ; 549
	i32 491, ; 550
	i32 474, ; 551
	i32 338, ; 552
	i32 453, ; 553
	i32 171, ; 554
	i32 403, ; 555
	i32 220, ; 556
	i32 285, ; 557
	i32 150, ; 558
	i32 94, ; 559
	i32 177, ; 560
	i32 464, ; 561
	i32 298, ; 562
	i32 60, ; 563
	i32 445, ; 564
	i32 226, ; 565
	i32 454, ; 566
	i32 250, ; 567
	i32 157, ; 568
	i32 212, ; 569
	i32 64, ; 570
	i32 477, ; 571
	i32 88, ; 572
	i32 79, ; 573
	i32 47, ; 574
	i32 224, ; 575
	i32 143, ; 576
	i32 446, ; 577
	i32 378, ; 578
	i32 493, ; 579
	i32 509, ; 580
	i32 347, ; 581
	i32 292, ; 582
	i32 74, ; 583
	i32 91, ; 584
	i32 344, ; 585
	i32 408, ; 586
	i32 447, ; 587
	i32 135, ; 588
	i32 90, ; 589
	i32 330, ; 590
	i32 441, ; 591
	i32 350, ; 592
	i32 401, ; 593
	i32 289, ; 594
	i32 181, ; 595
	i32 252, ; 596
	i32 189, ; 597
	i32 405, ; 598
	i32 491, ; 599
	i32 112, ; 600
	i32 42, ; 601
	i32 416, ; 602
	i32 159, ; 603
	i32 4, ; 604
	i32 430, ; 605
	i32 247, ; 606
	i32 103, ; 607
	i32 489, ; 608
	i32 486, ; 609
	i32 523, ; 610
	i32 442, ; 611
	i32 70, ; 612
	i32 418, ; 613
	i32 199, ; 614
	i32 60, ; 615
	i32 39, ; 616
	i32 357, ; 617
	i32 232, ; 618
	i32 279, ; 619
	i32 465, ; 620
	i32 194, ; 621
	i32 153, ; 622
	i32 56, ; 623
	i32 34, ; 624
	i32 180, ; 625
	i32 363, ; 626
	i32 451, ; 627
	i32 211, ; 628
	i32 226, ; 629
	i32 276, ; 630
	i32 21, ; 631
	i32 163, ; 632
	i32 238, ; 633
	i32 476, ; 634
	i32 342, ; 635
	i32 502, ; 636
	i32 340, ; 637
	i32 482, ; 638
	i32 517, ; 639
	i32 498, ; 640
	i32 335, ; 641
	i32 140, ; 642
	i32 505, ; 643
	i32 213, ; 644
	i32 89, ; 645
	i32 398, ; 646
	i32 403, ; 647
	i32 377, ; 648
	i32 147, ; 649
	i32 291, ; 650
	i32 256, ; 651
	i32 162, ; 652
	i32 412, ; 653
	i32 320, ; 654
	i32 6, ; 655
	i32 360, ; 656
	i32 169, ; 657
	i32 31, ; 658
	i32 107, ; 659
	i32 468, ; 660
	i32 301, ; 661
	i32 260, ; 662
	i32 217, ; 663
	i32 503, ; 664
	i32 239, ; 665
	i32 335, ; 666
	i32 390, ; 667
	i32 210, ; 668
	i32 185, ; 669
	i32 274, ; 670
	i32 328, ; 671
	i32 208, ; 672
	i32 167, ; 673
	i32 209, ; 674
	i32 302, ; 675
	i32 468, ; 676
	i32 406, ; 677
	i32 140, ; 678
	i32 59, ; 679
	i32 436, ; 680
	i32 144, ; 681
	i32 474, ; 682
	i32 383, ; 683
	i32 188, ; 684
	i32 520, ; 685
	i32 477, ; 686
	i32 81, ; 687
	i32 265, ; 688
	i32 74, ; 689
	i32 130, ; 690
	i32 25, ; 691
	i32 7, ; 692
	i32 93, ; 693
	i32 487, ; 694
	i32 460, ; 695
	i32 332, ; 696
	i32 137, ; 697
	i32 268, ; 698
	i32 221, ; 699
	i32 113, ; 700
	i32 9, ; 701
	i32 260, ; 702
	i32 104, ; 703
	i32 19, ; 704
	i32 430, ; 705
	i32 218, ; 706
	i32 300, ; 707
	i32 314, ; 708
	i32 524, ; 709
	i32 294, ; 710
	i32 194, ; 711
	i32 33, ; 712
	i32 282, ; 713
	i32 46, ; 714
	i32 439, ; 715
	i32 242, ; 716
	i32 30, ; 717
	i32 283, ; 718
	i32 57, ; 719
	i32 134, ; 720
	i32 114, ; 721
	i32 229, ; 722
	i32 191, ; 723
	i32 337, ; 724
	i32 424, ; 725
	i32 348, ; 726
	i32 55, ; 727
	i32 407, ; 728
	i32 214, ; 729
	i32 6, ; 730
	i32 77, ; 731
	i32 233, ; 732
	i32 258, ; 733
	i32 293, ; 734
	i32 490, ; 735
	i32 185, ; 736
	i32 511, ; 737
	i32 111, ; 738
	i32 255, ; 739
	i32 297, ; 740
	i32 486, ; 741
	i32 266, ; 742
	i32 418, ; 743
	i32 102, ; 744
	i32 476, ; 745
	i32 455, ; 746
	i32 424, ; 747
	i32 427, ; 748
	i32 466, ; 749
	i32 400, ; 750
	i32 241, ; 751
	i32 183, ; 752
	i32 488, ; 753
	i32 367, ; 754
	i32 459, ; 755
	i32 399, ; 756
	i32 469, ; 757
	i32 170, ; 758
	i32 115, ; 759
	i32 499, ; 760
	i32 332, ; 761
	i32 287, ; 762
	i32 76, ; 763
	i32 343, ; 764
	i32 85, ; 765
	i32 345, ; 766
	i32 280, ; 767
	i32 251, ; 768
	i32 520, ; 769
	i32 192, ; 770
	i32 322, ; 771
	i32 386, ; 772
	i32 160, ; 773
	i32 2, ; 774
	i32 293, ; 775
	i32 24, ; 776
	i32 273, ; 777
	i32 32, ; 778
	i32 117, ; 779
	i32 37, ; 780
	i32 16, ; 781
	i32 359, ; 782
	i32 460, ; 783
	i32 465, ; 784
	i32 174, ; 785
	i32 484, ; 786
	i32 483, ; 787
	i32 52, ; 788
	i32 451, ; 789
	i32 346, ; 790
	i32 193, ; 791
	i32 20, ; 792
	i32 267, ; 793
	i32 123, ; 794
	i32 154, ; 795
	i32 180, ; 796
	i32 207, ; 797
	i32 473, ; 798
	i32 300, ; 799
	i32 463, ; 800
	i32 131, ; 801
	i32 379, ; 802
	i32 235, ; 803
	i32 385, ; 804
	i32 282, ; 805
	i32 148, ; 806
	i32 197, ; 807
	i32 384, ; 808
	i32 385, ; 809
	i32 269, ; 810
	i32 120, ; 811
	i32 28, ; 812
	i32 132, ; 813
	i32 100, ; 814
	i32 134, ; 815
	i32 450, ; 816
	i32 320, ; 817
	i32 429, ; 818
	i32 153, ; 819
	i32 97, ; 820
	i32 125, ; 821
	i32 270, ; 822
	i32 373, ; 823
	i32 69, ; 824
	i32 513, ; 825
	i32 365, ; 826
	i32 72, ; 827
	i32 371, ; 828
	i32 514, ; 829
	i32 305, ; 830
	i32 522, ; 831
	i32 323, ; 832
	i32 136, ; 833
	i32 406, ; 834
	i32 124, ; 835
	i32 456, ; 836
	i32 71, ; 837
	i32 479, ; 838
	i32 492, ; 839
	i32 111, ; 840
	i32 315, ; 841
	i32 174, ; 842
	i32 205, ; 843
	i32 448, ; 844
	i32 152, ; 845
	i32 506, ; 846
	i32 428, ; 847
	i32 434, ; 848
	i32 505, ; 849
	i32 522, ; 850
	i32 343, ; 851
	i32 118, ; 852
	i32 291, ; 853
	i32 175, ; 854
	i32 490, ; 855
	i32 127, ; 856
	i32 133, ; 857
	i32 206, ; 858
	i32 375, ; 859
	i32 455, ; 860
	i32 467, ; 861
	i32 77, ; 862
	i32 46, ; 863
	i32 294, ; 864
	i32 73, ; 865
	i32 63, ; 866
	i32 98, ; 867
	i32 84, ; 868
	i32 507, ; 869
	i32 43, ; 870
	i32 61, ; 871
	i32 217, ; 872
	i32 321, ; 873
	i32 404, ; 874
	i32 512, ; 875
	i32 204, ; 876
	i32 384, ; 877
	i32 37, ; 878
	i32 372, ; 879
	i32 40, ; 880
	i32 284, ; 881
	i32 349, ; 882
	i32 160, ; 883
	i32 253, ; 884
	i32 98, ; 885
	i32 254, ; 886
	i32 289, ; 887
	i32 261, ; 888
	i32 206, ; 889
	i32 236, ; 890
	i32 257, ; 891
	i32 135, ; 892
	i32 20, ; 893
	i32 65, ; 894
	i32 494, ; 895
	i32 125, ; 896
	i32 75, ; 897
	i32 313, ; 898
	i32 164, ; 899
	i32 207, ; 900
	i32 156, ; 901
	i32 5, ; 902
	i32 49, ; 903
	i32 327, ; 904
	i32 495, ; 905
	i32 144, ; 906
	i32 139, ; 907
	i32 449, ; 908
	i32 100, ; 909
	i32 223, ; 910
	i32 123, ; 911
	i32 120, ; 912
	i32 142, ; 913
	i32 367, ; 914
	i32 39, ; 915
	i32 369, ; 916
	i32 68, ; 917
	i32 41, ; 918
	i32 514, ; 919
	i32 382, ; 920
	i32 438, ; 921
	i32 164, ; 922
	i32 386, ; 923
	i32 73, ; 924
	i32 404, ; 925
	i32 481, ; 926
	i32 508, ; 927
	i32 469, ; 928
	i32 165, ; 929
	i32 211, ; 930
	i32 127, ; 931
	i32 299, ; 932
	i32 394, ; 933
	i32 470, ; 934
	i32 348, ; 935
	i32 68, ; 936
	i32 169, ; 937
	i32 241, ; 938
	i32 394, ; 939
	i32 423, ; 940
	i32 229, ; 941
	i32 475, ; 942
	i32 312, ; 943
	i32 286, ; 944
	i32 459, ; 945
	i32 254, ; 946
	i32 228, ; 947
	i32 319, ; 948
	i32 151, ; 949
	i32 45, ; 950
	i32 108, ; 951
	i32 48, ; 952
	i32 96, ; 953
	i32 31, ; 954
	i32 351, ; 955
	i32 507, ; 956
	i32 428, ; 957
	i32 23, ; 958
	i32 166, ; 959
	i32 22, ; 960
	i32 355, ; 961
	i32 138, ; 962
	i32 365, ; 963
	i32 78, ; 964
	i32 515, ; 965
	i32 173, ; 966
	i32 364, ; 967
	i32 54, ; 968
	i32 362, ; 969
	i32 312, ; 970
	i32 317, ; 971
	i32 10, ; 972
	i32 275, ; 973
	i32 190, ; 974
	i32 316, ; 975
	i32 303, ; 976
	i32 184, ; 977
	i32 16, ; 978
	i32 139, ; 979
	i32 222, ; 980
	i32 370, ; 981
	i32 13, ; 982
	i32 216, ; 983
	i32 15, ; 984
	i32 122, ; 985
	i32 510, ; 986
	i32 87, ; 987
	i32 149, ; 988
	i32 22, ; 989
	i32 500, ; 990
	i32 34, ; 991
	i32 79, ; 992
	i32 500, ; 993
	i32 341, ; 994
	i32 263, ; 995
	i32 380, ; 996
	i32 147, ; 997
	i32 80, ; 998
	i32 498, ; 999
	i32 175, ; 1000
	i32 265, ; 1001
	i32 397, ; 1002
	i32 471, ; 1003
	i32 419, ; 1004
	i32 268, ; 1005
	i32 510, ; 1006
	i32 42, ; 1007
	i32 195, ; 1008
	i32 26, ; 1009
	i32 449, ; 1010
	i32 314, ; 1011
	i32 311, ; 1012
	i32 107, ; 1013
	i32 250, ; 1014
	i32 110, ; 1015
	i32 219, ; 1016
	i32 410, ; 1017
	i32 501, ; 1018
	i32 372, ; 1019
	i32 7, ; 1020
	i32 422, ; 1021
	i32 344, ; 1022
	i32 208, ; 1023
	i32 439, ; 1024
	i32 44, ; 1025
	i32 494, ; 1026
	i32 161, ; 1027
	i32 431, ; 1028
	i32 201, ; 1029
	i32 148, ; 1030
	i32 280, ; 1031
	i32 316, ; 1032
	i32 38, ; 1033
	i32 15, ; 1034
	i32 425, ; 1035
	i32 264, ; 1036
	i32 146, ; 1037
	i32 8, ; 1038
	i32 297, ; 1039
	i32 184, ; 1040
	i32 318, ; 1041
	i32 130, ; 1042
	i32 504, ; 1043
	i32 245, ; 1044
	i32 503, ; 1045
	i32 499, ; 1046
	i32 352, ; 1047
	i32 334, ; 1048
	i32 94 ; 1049
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
