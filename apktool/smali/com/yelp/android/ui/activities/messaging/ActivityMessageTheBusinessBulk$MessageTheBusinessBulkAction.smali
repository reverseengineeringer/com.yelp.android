.class public final enum Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;
.super Ljava/lang/Enum;
.source "ActivityMessageTheBusinessBulk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageTheBusinessBulkAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

.field public static final enum COMPOSE_MESSAGE_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

.field public static final enum SEND_DRAFT_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    const-string/jumbo v1, "SEND_DRAFT_ON_COMPLETION"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->SEND_DRAFT_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    const-string/jumbo v1, "COMPOSE_MESSAGE_ON_COMPLETION"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->COMPOSE_MESSAGE_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->SEND_DRAFT_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->COMPOSE_MESSAGE_ON_COMPLETION:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$MessageTheBusinessBulkAction;

    return-object v0
.end method
