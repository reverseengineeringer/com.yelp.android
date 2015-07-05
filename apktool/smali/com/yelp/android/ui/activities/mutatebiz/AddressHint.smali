.class public final enum Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;
.super Ljava/lang/Enum;
.source "AddressHint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

.field public static final enum HK:Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

.field public static final enum TW:Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;


# instance fields
.field public final address1:I

.field public final address1Alt:I

.field public final address1Primary:I

.field public final address2:I

.field public final address2Alt:I

.field public final address2Primary:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    const-string/jumbo v1, "HK"

    const v3, 0x7f0702e5

    const v4, 0x7f0702e6

    const v5, 0x7f0702e3

    const v6, 0x7f0702e4

    const v7, 0x7f0702e1

    const v8, 0x7f0702e2

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->HK:Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    .line 14
    new-instance v3, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    const-string/jumbo v4, "TW"

    const v6, 0x7f0705a5

    const v7, 0x7f0705a6

    const v8, 0x7f0705a3

    const v9, 0x7f0705a4

    const v10, 0x7f0705a1

    const v11, 0x7f0705a2

    move v5, v12

    invoke-direct/range {v3 .. v11}, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v3, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->TW:Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->HK:Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->TW:Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->$VALUES:[Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address1Primary:I

    .line 30
    iput p4, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address2Primary:I

    .line 31
    iput p5, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address1Alt:I

    .line 32
    iput p6, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address2Alt:I

    .line 33
    iput p7, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address1:I

    .line 34
    iput p8, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address2:I

    .line 35
    return-void
.end method

.method public static getFromCountry(Ljava/lang/String;)Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;
    .locals 2

    .prologue
    .line 38
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 44
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 38
    :sswitch_0
    const-string/jumbo v1, "HK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "TW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->HK:Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    goto :goto_1

    .line 42
    :pswitch_1
    sget-object v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->TW:Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x903 -> :sswitch_0
        0xa83 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->$VALUES:[Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    return-object v0
.end method
