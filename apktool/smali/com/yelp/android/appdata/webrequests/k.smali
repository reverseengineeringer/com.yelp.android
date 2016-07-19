.class public abstract Lcom/yelp/android/appdata/webrequests/k;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "ApiLocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/k$a;,
        Lcom/yelp/android/appdata/webrequests/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/location/Location;

.field private final g:Lcom/yelp/android/appdata/LocationService;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:Lcom/yelp/android/appdata/LocationService$Accuracies;

.field private final l:Lcom/yelp/android/appdata/LocationService$Recentness;

.field private m:J

.field private n:Z

.field private final o:Lcom/yelp/android/appdata/webrequests/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$a",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private final p:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/LocationService$Accuracies;",
            "Lcom/yelp/android/appdata/LocationService$Recentness;",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<TResult;>;",
            "Lcom/yelp/android/appdata/LocationService$AccuracyUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p5}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 53
    const-string/jumbo v0, "latitude"

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->h:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "longitude"

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->i:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "accuracy"

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->j:Ljava/lang/String;

    .line 58
    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/k;->m:J

    .line 84
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->g:Lcom/yelp/android/appdata/LocationService;

    .line 85
    const-string/jumbo v0, "LOCDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/yelp/android/appdata/LocationService$Accuracies;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " recentness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/yelp/android/appdata/LocationService$Recentness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/k;->k:Lcom/yelp/android/appdata/LocationService$Accuracies;

    .line 87
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/k;->l:Lcom/yelp/android/appdata/LocationService$Recentness;

    .line 88
    iput-object p6, p0, Lcom/yelp/android/appdata/webrequests/k;->p:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    .line 89
    new-instance v0, Lcom/yelp/android/appdata/webrequests/k$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/k$a;-><init>(Lcom/yelp/android/appdata/webrequests/k;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->o:Lcom/yelp/android/appdata/webrequests/k$a;

    .line 90
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/yelp/android/appdata/webrequests/k;->m:J

    .line 131
    return-void
.end method

.method protected a(Landroid/location/Location;)V
    .locals 5

    .prologue
    const v4, 0x44c92b02

    .line 212
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/k;->c(Ljava/lang/String;D)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/k;->c(Ljava/lang/String;D)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->p:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    sget-object v1, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    if-ne v0, v1, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/k;->h()Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    if-ne v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/k;->a(Ljava/lang/String;D)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/k;->b(Ljava/lang/String;D)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->p:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    sget-object v1, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/k;->h()Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    if-ne v0, v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    div-float/2addr v1, v4

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/k;->a(Ljava/lang/String;D)V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    div-float/2addr v1, v4

    float-to-double v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/k;->b(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "latitude key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/k;->h:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->l:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/LocationService$Recentness;->satisfies(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/k;->b([Ljava/lang/Object;)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/k;->n:Z

    .line 143
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->o:Lcom/yelp/android/appdata/webrequests/k$a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/k$a;->a([Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->g:Lcom/yelp/android/appdata/LocationService;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/k;->k:Lcom/yelp/android/appdata/LocationService$Accuracies;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/k;->l:Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/k;->o:Lcom/yelp/android/appdata/webrequests/k$a;

    iget-wide v4, p0, Lcom/yelp/android/appdata/webrequests/k;->m:J

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/LocationService$a;J)V

    goto :goto_0
.end method

.method public b(Landroid/location/Location;)Lcom/yelp/android/appdata/webrequests/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/k",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 290
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    .line 291
    return-object p0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 256
    if-nez p1, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "longitude key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/k;->i:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public varargs b([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/k;->m()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 161
    const-string/jumbo v0, "Tried to start request twice"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/k;->n:Z

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/k;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/k$b;

    .line 168
    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/k$b;->a(Landroid/location/Location;)V

    .line 171
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/k;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yelp/android/appdata/webrequests/core/b;->c()V

    .line 43
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->g:Lcom/yelp/android/appdata/LocationService;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/k;->o:Lcom/yelp/android/appdata/webrequests/k$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/LocationService;->a(Lcom/yelp/android/appdata/LocationService$a;)V

    .line 44
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/k;->n:Z

    return v0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/yelp/android/appdata/webrequests/core/b;->e()V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/k;->a(Landroid/location/Location;)V

    .line 209
    :cond_0
    return-void
.end method

.method public f()Landroid/location/Location;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/k;->a:Landroid/location/Location;

    return-object v0
.end method
