.class public final enum Lcom/yelp/android/debug/Debug$MockLocation;
.super Ljava/lang/Enum;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/debug/Debug$MockLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Austin:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Bakersfield:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Berkeley:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Bludenz:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Dublin:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Emeryville:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Guam:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Hamburg:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Limerick:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum London:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum MexicoCity:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum NewYork:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum NobHill:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Paris:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Portland:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum PuertoRico:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Rolla:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum SF:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum SantaMonica:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum SouthManchester:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum SuburbiaVA:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum Toronto:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum VirginIslands:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum WashingtonDC:Lcom/yelp/android/debug/Debug$MockLocation;

.field public static final enum WhiteSands:Lcom/yelp/android/debug/Debug$MockLocation;


# instance fields
.field acc:F

.field lat:D

.field lon:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 63
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "SF"

    const/4 v3, 0x0

    const-wide v4, 0x4042e4b484d76ab6L    # 37.786759

    const-wide v6, -0x3fa1664256bca537L    # -122.402201

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->SF:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 64
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Berkeley"

    const/4 v3, 0x1

    const-wide v4, 0x4042efdb76b3bb84L    # 37.873885

    const-wide v6, -0x3fa16ecf28c79f66L    # -122.268606

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Berkeley:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 65
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "WashingtonDC"

    const/4 v3, 0x2

    const-wide v4, 0x404343d70a3d70a4L    # 38.53

    const-wide v6, -0x3facbeb851eb851fL    # -77.02

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->WashingtonDC:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 66
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "SuburbiaVA"

    const/4 v3, 0x3

    const-wide v4, 0x40437579d0a67621L    # 38.91778

    const-wide v6, -0x3facae98bf7f0670L    # -77.271927

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->SuburbiaVA:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 67
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Bakersfield"

    const/4 v3, 0x4

    const-wide v4, 0x4041b030caa326e1L    # 35.376489

    const-wide v6, -0x3fa23ea4484944edL    # -119.021223

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Bakersfield:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 68
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Bludenz"

    const/4 v3, 0x5

    const-wide v4, 0x4047935b81301648L    # 47.15123

    const-wide v6, 0x4023ba0f9096bb99L    # 9.8634

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Bludenz:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 69
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Toronto"

    const/4 v3, 0x6

    const-wide v4, 0x4045d4ac2b6c9555L    # 43.6615042

    const-wide v6, -0x3fac249f5092bf8bL    # -79.4277762

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Toronto:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 70
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "NewYork"

    const/4 v3, 0x7

    const-wide v4, 0x404461227d028a1eL    # 40.758865

    const-wide v6, -0x3fad815ba2be058aL    # -73.978782

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->NewYork:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 71
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "WhiteSands"

    const/16 v3, 0x8

    const-wide v4, 0x40423a5119ce075fL    # 36.4556

    const-wide v6, -0x3fa2c888ace24bbaL    # -116.866658

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->WhiteSands:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 72
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Portland"

    const/16 v3, 0x9

    const-wide v4, 0x4046c3471f79420bL    # 45.525608

    const-wide v6, -0x3fa154c2bd7f51f0L    # -122.675614

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Portland:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 73
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Rolla"

    const/16 v3, 0xa

    const-wide v4, 0x40486eae85b9e8c4L    # 48.864701

    const-wide v6, -0x3fa7185d56f32bdcL    # -99.619303

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Rolla:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 74
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Emeryville"

    const/16 v3, 0xb

    const-wide v4, 0x4042eafae5e4cbc7L    # 37.8357818

    const-wide v6, -0x3fa16e4cfe4af41aL    # -122.2765507

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Emeryville:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 75
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "SantaMonica"

    const/16 v3, 0xc

    const-wide v4, 0x404101f6cacd184cL    # 34.015344

    const-wide v6, -0x3fa260414e7ee914L    # -118.496014

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->SantaMonica:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 76
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "NobHill"

    const/16 v3, 0xd

    const-wide v4, 0x4042e561d2a2baa7L    # 37.79204781480558

    const-wide v6, -0x3fa165821e7f076fL    # -122.41393315882512

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->NobHill:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 77
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Austin"

    const/16 v3, 0xe

    const-wide v4, 0x403e44567125dd09L    # 30.266944

    const-wide v6, -0x3fa79076534373f3L    # -97.742778

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Austin:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 80
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "VirginIslands"

    const/16 v3, 0xf

    const-wide v4, 0x403255f4b1ee2435L    # 18.335765

    const-wide v6, -0x3fafc6a272862f5aL    # -64.896335

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->VirginIslands:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 81
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "PuertoRico"

    const/16 v3, 0x10

    const-wide v4, 0x4032388882f0e0a8L    # 18.220833

    const-wide v6, -0x3faf5a3affb04ee8L    # -66.590149

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->PuertoRico:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 82
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Guam"

    const/16 v3, 0x11

    const-wide v4, 0x402ae37bd05af6c7L    # 13.444304

    const-wide v6, 0x406219663e8dda49L    # 144.793731

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Guam:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 85
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Hamburg"

    const/16 v3, 0x12

    const-wide v4, 0x404ac6353f7ced91L    # 53.5485

    const-wide v6, 0x4023f9d9d3458cd2L    # 9.98799

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Hamburg:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 88
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "London"

    const/16 v3, 0x13

    const-wide v4, 0x4049bf97d49d7ba6L    # 51.496821

    const-wide v6, -0x403e0e1f7d73c925L    # -0.140194

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->London:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 89
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "SouthManchester"

    const/16 v3, 0x14

    const-wide v4, 0x404ab8919ef954ebL    # 53.441944

    const-wide v6, -0x3ffe3fbefd00713fL    # -2.218874

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->SouthManchester:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 92
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Dublin"

    const/16 v3, 0x15

    const-wide v4, 0x404aac22d5171e2aL    # 53.344813

    const-wide v6, -0x3fe6ed2bf5515055L    # -6.268387

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Dublin:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 93
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Limerick"

    const/16 v3, 0x16

    const-wide v4, 0x404a547ae147ae14L    # 52.66

    const-wide v6, -0x3fdebd70a3d70a3dL    # -8.63

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Limerick:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 96
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "Paris"

    const/16 v3, 0x17

    const-wide v4, 0x40486eeef1bac2dfL    # 48.866667

    const-wide v6, 0x4002aaaaa6315791L    # 2.3333333

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->Paris:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 99
    new-instance v1, Lcom/yelp/android/debug/Debug$MockLocation;

    const-string/jumbo v2, "MexicoCity"

    const/16 v3, 0x18

    const-wide v4, 0x40337150a88effe3L    # 19.442637

    const-wide v6, -0x3fa739fd00713f07L    # -99.093933

    const/high16 v8, 0x42480000    # 50.0f

    invoke-direct/range {v1 .. v8}, Lcom/yelp/android/debug/Debug$MockLocation;-><init>(Ljava/lang/String;IDDF)V

    sput-object v1, Lcom/yelp/android/debug/Debug$MockLocation;->MexicoCity:Lcom/yelp/android/debug/Debug$MockLocation;

    .line 62
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/yelp/android/debug/Debug$MockLocation;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->SF:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Berkeley:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->WashingtonDC:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->SuburbiaVA:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Bakersfield:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Bludenz:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Toronto:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->NewYork:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->WhiteSands:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Portland:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Rolla:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Emeryville:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->SantaMonica:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->NobHill:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Austin:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->VirginIslands:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->PuertoRico:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Guam:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Hamburg:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->London:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->SouthManchester:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Dublin:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Limerick:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->Paris:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/yelp/android/debug/Debug$MockLocation;->MexicoCity:Lcom/yelp/android/debug/Debug$MockLocation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/debug/Debug$MockLocation;->$VALUES:[Lcom/yelp/android/debug/Debug$MockLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDDF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDF)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-wide p3, p0, Lcom/yelp/android/debug/Debug$MockLocation;->lat:D

    .line 106
    iput-wide p5, p0, Lcom/yelp/android/debug/Debug$MockLocation;->lon:D

    .line 107
    iput p7, p0, Lcom/yelp/android/debug/Debug$MockLocation;->acc:F

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/debug/Debug$MockLocation;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/yelp/android/debug/Debug$MockLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/Debug$MockLocation;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/debug/Debug$MockLocation;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/yelp/android/debug/Debug$MockLocation;->$VALUES:[Lcom/yelp/android/debug/Debug$MockLocation;

    invoke-virtual {v0}, [Lcom/yelp/android/debug/Debug$MockLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/debug/Debug$MockLocation;

    return-object v0
.end method


# virtual methods
.method public getLoc()Landroid/location/Location;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "Mock"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 113
    iget-wide v2, p0, Lcom/yelp/android/debug/Debug$MockLocation;->lat:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 114
    iget-wide v2, p0, Lcom/yelp/android/debug/Debug$MockLocation;->lon:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 115
    iget v1, p0, Lcom/yelp/android/debug/Debug$MockLocation;->acc:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 118
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 121
    :cond_0
    return-object v0
.end method
