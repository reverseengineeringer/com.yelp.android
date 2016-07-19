.class public final enum Lcom/yelp/android/serializable/Compliment$ComplimentType;
.super Ljava/lang/Enum;
.source "Compliment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Compliment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComplimentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Compliment$ComplimentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum COOL:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum CUTE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum FUNNY:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum HOT:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum LIST:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum MORE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum NOTE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum PHOTOS:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum PLAIN:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum PROFILE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentType;

.field public static final enum WRITER:Lcom/yelp/android/serializable/Compliment$ComplimentType;


# instance fields
.field public final mDescription:I

.field public final mIcon:I

.field public final mText:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v1, "PLAIN"

    const v3, 0x7f0201c5

    const v4, 0x7f07004c

    const v5, 0x7f070043

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->PLAIN:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 136
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "CUTE"

    const v6, 0x7f0201bd

    const v7, 0x7f07003a

    const v8, 0x7f07003c

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->CUTE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 137
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "WRITER"

    const v6, 0x7f0201c6

    const v7, 0x7f07004e

    const v8, 0x7f070045

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->WRITER:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 141
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "HOT"

    const v6, 0x7f0201bf

    const v7, 0x7f070047

    const v8, 0x7f07003e

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->HOT:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 142
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "NOTE"

    const v6, 0x7f0201c2

    const v7, 0x7f07004a

    const v8, 0x7f070041

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->NOTE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 143
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "PROFILE"

    const/4 v5, 0x5

    const v6, 0x7f0201c4

    const v7, 0x7f07004d

    const v8, 0x7f070044

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->PROFILE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 147
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "MORE"

    const/4 v5, 0x6

    const v6, 0x7f0201c1

    const v7, 0x7f070049

    const v8, 0x7f070040

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->MORE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 148
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "COOL"

    const/4 v5, 0x7

    const v6, 0x7f0201bc

    const v7, 0x7f070039

    const v8, 0x7f07003b

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->COOL:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 149
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "PHOTOS"

    const/16 v5, 0x8

    const v6, 0x7f0201c3

    const v7, 0x7f07004b

    const v8, 0x7f070042

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->PHOTOS:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 153
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "LIST"

    const/16 v5, 0x9

    const v6, 0x7f0201c0

    const v7, 0x7f070048

    const v8, 0x7f07003f

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->LIST:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 154
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "FUNNY"

    const/16 v5, 0xa

    const v6, 0x7f0201be

    const v7, 0x7f070046

    const v8, 0x7f07003d

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->FUNNY:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 158
    new-instance v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    const-string/jumbo v4, "UNKNOWN"

    const/16 v5, 0xb

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/serializable/Compliment$ComplimentType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/yelp/android/serializable/Compliment$ComplimentType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 131
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/yelp/android/serializable/Compliment$ComplimentType;

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->PLAIN:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->CUTE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->WRITER:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->HOT:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->NOTE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentType;->PROFILE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentType;->MORE:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentType;->COOL:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentType;->PHOTOS:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentType;->LIST:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentType;->FUNNY:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentType;->UNKNOWN:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->$VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 168
    iput p4, p0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mText:I

    .line 169
    iput p3, p0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mIcon:I

    .line 170
    iput p5, p0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mDescription:I

    .line 171
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Compliment$ComplimentType;
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Compliment$ComplimentType;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/yelp/android/serializable/Compliment$ComplimentType;->$VALUES:[Lcom/yelp/android/serializable/Compliment$ComplimentType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Compliment$ComplimentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Compliment$ComplimentType;

    return-object v0
.end method
