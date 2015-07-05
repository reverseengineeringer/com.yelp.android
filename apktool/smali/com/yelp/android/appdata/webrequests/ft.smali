.class public final Lcom/yelp/android/appdata/webrequests/ft;
.super Ljava/lang/Object;
.source "SaveTopicRequest.java"


# instance fields
.field public final a:Lcom/yelp/android/serializable/TalkTopic;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/TalkTopic;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ft;->a:Lcom/yelp/android/serializable/TalkTopic;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ft;->b:Ljava/lang/String;

    .line 25
    return-void
.end method
