.class public abstract enum Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
.super Ljava/lang/Enum;
.source "BusinessBasicInfo.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/businesspage/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;",
        ">;",
        "Lcom/yelp/android/ui/activities/businesspage/o;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

.field public static final enum CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

.field public static final enum DIRECTIONS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

.field public static final enum MAKE_RESERVATION:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

.field public static final enum MENU:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

.field public static final enum MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

.field public static final enum MORE_INFO:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

.field public static final enum MOVIES:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

.field public static final enum ORDER:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;


# instance fields
.field private icon:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;

    const-string/jumbo v1, "DIRECTIONS"

    const v2, 0x7f02017d

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->DIRECTIONS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$2;

    const-string/jumbo v1, "CALL"

    const v2, 0x7f0200de

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 70
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$3;

    const-string/jumbo v1, "MAKE_RESERVATION"

    const v2, 0x7f02031e

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MAKE_RESERVATION:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 89
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$4;

    const-string/jumbo v1, "MESSAGE_THE_BUSINESS"

    const v2, 0x7f0202da

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 109
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$5;

    const-string/jumbo v1, "MENU"

    invoke-direct {v0, v1, v8, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MENU:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 132
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$6;

    const-string/jumbo v1, "ORDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ORDER:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 160
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$7;

    const-string/jumbo v1, "MOVIES"

    const/4 v2, 0x6

    const v3, 0x7f020268

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MOVIES:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 197
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$8;

    const-string/jumbo v1, "MORE_INFO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$8;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MORE_INFO:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->DIRECTIONS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MAKE_RESERVATION:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MENU:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ORDER:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MOVIES:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MORE_INFO:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput p3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->icon:I

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    return-object v0
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->icon:I

    return v0
.end method

.method public getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public isSubtitleExpanded()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method
