.class abstract enum Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;
.super Ljava/lang/Enum;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

.field public static final enum MESSAGE_THE_BUSINESS_SUCCESS_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

.field public static final enum TIP_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

.field public static final enum VIDEO_UPLOAD_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;


# instance fields
.field private mData:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 385
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification$1;

    const-string/jumbo v1, "TIP_NOTIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->TIP_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    .line 393
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification$2;

    const-string/jumbo v1, "MESSAGE_THE_BUSINESS_SUCCESS_NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->MESSAGE_THE_BUSINESS_SUCCESS_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    .line 401
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification$3;

    const-string/jumbo v1, "VIDEO_UPLOAD_NOTIFICATION"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->VIDEO_UPLOAD_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    .line 384
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->TIP_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->MESSAGE_THE_BUSINESS_SUCCESS_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->VIDEO_UPLOAD_NOTIFICATION:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/businesspage/aa;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;
    .locals 1

    .prologue
    .line 384
    const-class v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->$VALUES:[Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;

    return-object v0
.end method


# virtual methods
.method protected abstract addNotification(Landroid/content/Context;Lcom/yelp/android/ui/activities/businesspage/t;Landroid/content/Intent;)V
.end method

.method public getData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method public setData(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$MessageAlertBoxNotification;->mData:Landroid/content/Intent;

    .line 413
    return-object p0
.end method
