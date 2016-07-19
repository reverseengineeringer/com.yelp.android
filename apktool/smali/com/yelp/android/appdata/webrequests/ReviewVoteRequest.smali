.class public Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "ReviewVoteRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;,
        Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

.field private final g:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 61
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

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 62
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Reviewid cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p3, :cond_1

    .line 66
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

    .line 70
    :cond_1
    const-string/jumbo v0, "review_id"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "type"

    invoke-virtual {p3}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->a:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    .line 73
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->g:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 74
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->h:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/ApiException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->a:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    return-object v0
.end method

.method public d()Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->g:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->h:Ljava/lang/String;

    return-object v0
.end method
