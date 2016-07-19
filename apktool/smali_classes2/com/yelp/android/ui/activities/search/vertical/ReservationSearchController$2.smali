.class Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$2;
.super Ljava/lang/Object;
.source "ReservationSearchController.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$2;->this$0:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberPickerChanged(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$2;->this$0:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;I)I

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$2;->this$0:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$2;->this$0:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->g(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$2;->this$0:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->f(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->setReservationPartyPickerText(Ljava/lang/String;)V

    .line 234
    return-void
.end method
