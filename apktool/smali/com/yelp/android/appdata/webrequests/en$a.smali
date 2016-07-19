.class public final Lcom/yelp/android/appdata/webrequests/en$a;
.super Ljava/lang/Object;
.source "SaveTopicRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/yelp/android/serializable/TalkTopic;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/TalkTopic;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/en$a;->a:Lcom/yelp/android/serializable/TalkTopic;

    .line 25
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/en$a;->b:Ljava/lang/String;

    .line 26
    return-void
.end method
