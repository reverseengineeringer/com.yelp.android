.class public final enum Lcom/yelp/android/analytics/iris/IriSource;
.super Ljava/lang/Enum;
.source "IriSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/IriSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum AddPhotoPage:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum Button:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum Carousel:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum CheckInPage:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum EventsSections:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum Inbox:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum Link:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum Menu:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum NavDrawer:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum Nearby:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum None:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum PhotoGridCell:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum PostReviewYNRA:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum Profile:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum PushNotification:Lcom/yelp/android/analytics/iris/IriSource;

.field public static final enum UserProfile:Lcom/yelp/android/analytics/iris/IriSource;


# instance fields
.field private final mSourceParameterValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->None:Lcom/yelp/android/analytics/iris/IriSource;

    .line 17
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "AddPhotoPage"

    const-string/jumbo v2, "nav_add_photo"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->AddPhotoPage:Lcom/yelp/android/analytics/iris/IriSource;

    .line 18
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "AddReviewPage"

    const-string/jumbo v2, "nav_add_review"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    .line 19
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "Button"

    const-string/jumbo v2, "button"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Button:Lcom/yelp/android/analytics/iris/IriSource;

    .line 20
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "CheckInPage"

    const-string/jumbo v2, "check_in"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->CheckInPage:Lcom/yelp/android/analytics/iris/IriSource;

    .line 21
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "Inbox"

    const/4 v2, 0x5

    const-string/jumbo v3, "inbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Inbox:Lcom/yelp/android/analytics/iris/IriSource;

    .line 22
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "Menu"

    const/4 v2, 0x6

    const-string/jumbo v3, "menu"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Menu:Lcom/yelp/android/analytics/iris/IriSource;

    .line 23
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "Nearby"

    const/4 v2, 0x7

    const-string/jumbo v3, "nearby"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Nearby:Lcom/yelp/android/analytics/iris/IriSource;

    .line 24
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "NavDrawer"

    const/16 v2, 0x8

    const-string/jumbo v3, "navigation"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->NavDrawer:Lcom/yelp/android/analytics/iris/IriSource;

    .line 25
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "PostReviewYNRA"

    const/16 v2, 0x9

    const-string/jumbo v3, "post_review_ynra"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PostReviewYNRA:Lcom/yelp/android/analytics/iris/IriSource;

    .line 26
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "Profile"

    const/16 v2, 0xa

    const-string/jumbo v3, "profile"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Profile:Lcom/yelp/android/analytics/iris/IriSource;

    .line 27
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "UserProfile"

    const/16 v2, 0xb

    const-string/jumbo v3, "user_profile"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->UserProfile:Lcom/yelp/android/analytics/iris/IriSource;

    .line 28
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "EventsSections"

    const/16 v2, 0xc

    const-string/jumbo v3, "sections"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->EventsSections:Lcom/yelp/android/analytics/iris/IriSource;

    .line 29
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "PhotoGridCell"

    const/16 v2, 0xd

    const-string/jumbo v3, "photo_grid_cell"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PhotoGridCell:Lcom/yelp/android/analytics/iris/IriSource;

    .line 30
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "Carousel"

    const/16 v2, 0xe

    const-string/jumbo v3, "carousel"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Carousel:Lcom/yelp/android/analytics/iris/IriSource;

    .line 35
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "Link"

    const/16 v2, 0xf

    const-string/jumbo v3, "link"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Link:Lcom/yelp/android/analytics/iris/IriSource;

    .line 36
    new-instance v0, Lcom/yelp/android/analytics/iris/IriSource;

    const-string/jumbo v1, "PushNotification"

    const/16 v2, 0x10

    const-string/jumbo v3, "push_notification"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/IriSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PushNotification:Lcom/yelp/android/analytics/iris/IriSource;

    .line 8
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/IriSource;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->None:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddPhotoPage:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->Button:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->CheckInPage:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->Inbox:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->Menu:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->Nearby:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->NavDrawer:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->PostReviewYNRA:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->Profile:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->UserProfile:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->EventsSections:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->PhotoGridCell:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->Carousel:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->Link:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/yelp/android/analytics/iris/IriSource;->PushNotification:Lcom/yelp/android/analytics/iris/IriSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/IriSource;->$VALUES:[Lcom/yelp/android/analytics/iris/IriSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/IriSource;->mSourceParameterValue:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/IriSource;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/IriSource;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->$VALUES:[Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/IriSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/IriSource;

    return-object v0
.end method


# virtual methods
.method public final addParameter(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/IriSource;->mSourceParameterValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/yelp/android/analytics/iris/IriSource;->mSourceParameterValue:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method

.method public final getMapWithParameter()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-virtual {p0, v0}, Lcom/yelp/android/analytics/iris/IriSource;->addParameter(Ljava/util/Map;)V

    .line 53
    return-object v0
.end method

.method public final getParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/IriSource;->mSourceParameterValue:Ljava/lang/String;

    return-object v0
.end method
