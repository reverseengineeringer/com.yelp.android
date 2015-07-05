.class public final enum Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;
.super Ljava/lang/Enum;
.source "ApiListManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

.field public static final enum CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

.field public static final enum CONTENT_ADDED_TOP:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

.field public static final enum CONTENT_NEW:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

.field public static final enum CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

.field public static final enum NO_NEW_CONTENT:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    const-string/jumbo v1, "NO_NEW_CONTENT"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->NO_NEW_CONTENT:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    const-string/jumbo v1, "CONTENT_NEW"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_NEW:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    .line 12
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    const-string/jumbo v1, "CONTENT_ADDED_TOP"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_TOP:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    .line 13
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    const-string/jumbo v1, "CONTENT_ADDED_BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    const-string/jumbo v1, "CONTENT_TRASHED"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->NO_NEW_CONTENT:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_NEW:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_TOP:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    return-object v0
.end method
