.class public Lcom/yelp/android/appdata/webrequests/en;
.super Ljava/lang/Object;
.source "ReservationLeaseRequest.java"


# instance fields
.field final a:Lcom/yelp/android/serializable/Reservation;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/en;->a:Lcom/yelp/android/serializable/Reservation;

    .line 51
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/en;->b:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/en;->c:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/en;->d:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/Reservation;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/en;->a:Lcom/yelp/android/serializable/Reservation;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/en;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/en;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/en;->d:Ljava/lang/String;

    return-object v0
.end method
