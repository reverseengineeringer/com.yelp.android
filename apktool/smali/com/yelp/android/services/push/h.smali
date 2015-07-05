.class public Lcom/yelp/android/services/push/h;
.super Lcom/yelp/android/services/push/p;
.source "MessagePushNotificationHandler.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/services/push/p;)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/p;-><init>(Lcom/yelp/android/services/push/p;)V

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/services/push/h;->f()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 124
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/services/push/h;->b:Ljava/lang/String;

    .line 125
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/services/push/h;->a:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/services/push/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/services/push/h;->b:Ljava/lang/String;

    return-object v0
.end method
