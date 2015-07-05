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
    new-instance v0, Lcom/path/android/jobqueue/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/h;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/h;->a()Lcom/path/android/jobqueue/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/h;->b()Lcom/path/android/jobqueue/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/h;)V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mUserIds:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mUsersToIgnore:Ljava/util/ArrayList;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mMessage:Ljava/lang/String;

    .line 34
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
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->r()Lcom/path/android/jobqueue/c;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/services/job/SendFriendRequestsJob;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/services/job/SendFriendRequestsJob;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/Job;)J

    .line 24
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onRun()V
    .locals 5

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/appdata/webrequests/f;

    iget-object v1, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mUsersToIgnore:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/services/job/SendFriendRequestsJob;->mMessage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/f;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/f;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 39
    return-void
.end method
