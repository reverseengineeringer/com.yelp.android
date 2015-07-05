.class Lcom/yelp/android/ui/activities/r;
.super Ljava/lang/Object;
.source "ActivityCheckIn.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/ew;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCheckIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCheckIn;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/activities/r;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/r;->a:Lcom/yelp/android/ui/activities/ActivityCheckIn;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Lcom/yelp/android/ui/activities/ActivityCheckIn;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;

    .line 63
    return-void
.end method
