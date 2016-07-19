.class public final enum Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;
.super Ljava/lang/Enum;
.source "MessageTheBusinessType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

.field public static final enum MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

.field public static final enum REQUEST_A_QUOTE:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;


# instance fields
.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    const-string/jumbo v1, "MESSAGE_THE_BUSINESS"

    const-string/jumbo v2, "MTB"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    .line 5
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    const-string/jumbo v1, "REQUEST_A_QUOTE"

    const-string/jumbo v2, "RAQ"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->REQUEST_A_QUOTE:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->MESSAGE_THE_BUSINESS:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->REQUEST_A_QUOTE:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->mType:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->$VALUES:[Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;

    return-object v0
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessType;->mType:Ljava/lang/String;

    return-object v0
.end method
