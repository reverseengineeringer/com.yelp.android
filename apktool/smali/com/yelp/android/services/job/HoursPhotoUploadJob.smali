.class public Lcom/yelp/android/services/job/HoursPhotoUploadJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "HoursPhotoUploadJob.java"


# instance fields
.field private final mChangedParams:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/path/android/jobqueue/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/h;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/h;->a()Lcom/path/android/jobqueue/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/h;->b()Lcom/path/android/jobqueue/h;

    move-result-object v0

    const-string/jumbo v1, "HoursPhotoUploadJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/h;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/h;)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/co;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/yelp/android/services/job/HoursPhotoUploadJob;->mPostParams:Ljava/util/HashMap;

    .line 40
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/job/HoursPhotoUploadJob;->mChangedParams:Ljava/util/Collection;

    .line 41
    return-void
.end method

.method public static launchJob(Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->r()Lcom/path/android/jobqueue/c;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/services/job/HoursPhotoUploadJob;

    invoke-direct {v1, p0}, Lcom/yelp/android/services/job/HoursPhotoUploadJob;-><init>(Lcom/yelp/android/appdata/webrequests/co;)V

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/Job;)J

    .line 30
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onRun()V
    .locals 5

    .prologue
    .line 46
    new-instance v2, Lcom/yelp/android/appdata/webrequests/co;

    iget-object v0, p0, Lcom/yelp/android/services/job/HoursPhotoUploadJob;->mPostParams:Ljava/util/HashMap;

    const-string/jumbo v1, "image_path"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/yelp/android/appdata/webrequests/co;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/services/job/HoursPhotoUploadJob;->mPostParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "image_path"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/appdata/webrequests/co;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->executeSynchronously()Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 57
    const-string/jumbo v1, "changed"

    const-string/jumbo v2, ","

    iget-object v3, p0, Lcom/yelp/android/services/job/HoursPhotoUploadJob;->mChangedParams:Ljava/util/Collection;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessUpdateSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    .line 59
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 60
    return-void
.end method
