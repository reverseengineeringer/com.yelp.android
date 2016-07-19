.class public Lcom/yelp/android/services/job/SendFriendRequestsJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "SendFriendRequestsJob.java"


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersToIgnore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/path/android/jobqueue/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->a()Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->b()Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 29
    iput-object p1, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mUserIds:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mUsersToIgnore:Ljava/util/ArrayList;

    .line 31
    iput-object p3, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mMessage:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static launchJob(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->w()Lcom/path/android/jobqueue/b;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/services/job/SendFriendRequestsJob;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/services/job/SendFriendRequestsJob;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/Job;)J

    .line 24
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0}, Lcom/yelp/android/services/job/YelpJob;->onRun()V

    .line 37
    new-instance v0, Lcom/yelp/android/appdata/webrequests/j;

    iget-object v1, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mUsersToIgnore:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mMessage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/j;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/j;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 38
    return-void
.end method
