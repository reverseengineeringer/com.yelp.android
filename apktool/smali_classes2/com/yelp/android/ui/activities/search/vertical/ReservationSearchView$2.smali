.class Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$2;
.super Ljava/lang/Object;
.source "ReservationSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$2;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;->c()V

    .line 90
    :cond_0
    return-void
.end method
