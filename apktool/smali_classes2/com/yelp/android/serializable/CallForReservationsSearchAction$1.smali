.class Lcom/yelp/android/serializable/CallForReservationsSearchAction$1;
.super Lcom/yelp/android/ui/activities/businesspage/g;
.source "CallForReservationsSearchAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/serializable/CallForReservationsSearchAction;->d()Lcom/yelp/android/ui/activities/businesspage/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/CallForReservationsSearchAction;


# direct methods
.method constructor <init>(Lcom/yelp/android/serializable/CallForReservationsSearchAction;Lcom/yelp/android/serializable/SearchAction;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/serializable/CallForReservationsSearchAction$1;->a:Lcom/yelp/android/serializable/CallForReservationsSearchAction;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/g;-><init>(Lcom/yelp/android/serializable/SearchAction;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f020125

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method
