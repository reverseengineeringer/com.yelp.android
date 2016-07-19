.class public enum Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;
.super Ljava/lang/Enum;
.source "MessagingAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field public static final enum BLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field public static final enum DELETE_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field public static final enum FLAG_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field public static final enum MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field public static final enum SEND_MESSAGE:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field public static final enum UNBLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$1;

    const-string/jumbo v1, "FLAG_CONVERSATION"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->FLAG_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 18
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$2;

    const-string/jumbo v1, "DELETE_CONVERSATION"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->DELETE_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 28
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$3;

    const-string/jumbo v1, "BLOCK_USER"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->BLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 54
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$4;

    const-string/jumbo v1, "UNBLOCK_USER"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->UNBLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 80
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$5;

    const-string/jumbo v1, "MARK_CONVERSATION_READ"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 92
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    const-string/jumbo v1, "SEND_MESSAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->SEND_MESSAGE:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->FLAG_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->DELETE_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->BLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->UNBLOCK_USER:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->SEND_MESSAGE:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    return-object v0
.end method


# virtual methods
.method public getErrorMessage(Landroid/content/Context;Lcom/yelp/android/serializable/e;Lcom/yelp/android/appdata/webrequests/YelpException;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p3, p1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessMessage(Landroid/content/Context;Lcom/yelp/android/serializable/e;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, ""

    return-object v0
.end method
