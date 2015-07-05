.class public Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;
.super Lcom/yelp/android/av/h;
.source "ReviewVoteRequest.java"


# instance fields
.field private final a:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

.field private final b:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/av/i;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 59
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vote/review/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 60
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Reviewid cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-nez p3, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need a valid VoteValue[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->values()[Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    const-string/jumbo v0, "review_id"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "type"

    invoke-virtual {p3}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->a:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    .line 70
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->b:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 71
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->c:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->a:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    return-object v0
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->b:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected processErrorMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
