.class public final enum Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;
.super Ljava/lang/Enum;
.source "FriendRequestAcknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Acknowledgment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

.field public static final enum APPROVE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

.field public static final enum IGNORE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;


# instance fields
.field final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    const-string/jumbo v1, "APPROVE"

    const-string/jumbo v2, "user/accept_friend"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->APPROVE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    .line 15
    new-instance v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    const-string/jumbo v1, "IGNORE"

    const-string/jumbo v2, "user/ignore_friend"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->IGNORE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->APPROVE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->IGNORE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->$VALUES:[Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->url:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->$VALUES:[Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    return-object v0
.end method
