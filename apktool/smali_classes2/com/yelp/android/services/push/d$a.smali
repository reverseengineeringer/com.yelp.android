.class public Lcom/yelp/android/services/push/d$a;
.super Lcom/yelp/android/services/push/g;
.source "MessagePushNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/push/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/services/push/g;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/yelp/android/services/push/g;-><init>(Lcom/yelp/android/services/push/g;)V

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/services/push/d$a;->f()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 145
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/services/push/d$a;->b:Ljava/lang/String;

    .line 146
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/services/push/d$a;->a:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/services/push/d$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/services/push/d$a;->b:Ljava/lang/String;

    return-object v0
.end method
