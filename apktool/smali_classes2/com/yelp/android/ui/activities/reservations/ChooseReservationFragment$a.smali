.class final Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment$a;
.super Lcom/yelp/android/ui/util/w;
.source "ChooseReservationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 216
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment$a;->a:Ljava/text/DateFormat;

    .line 217
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x2

    .line 221
    if-nez p2, :cond_0

    .line 222
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 223
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move-object v0, v1

    .line 228
    check-cast v0, Landroid/widget/Button;

    .line 230
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/Reservation;

    .line 231
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ChooseReservationFragment$a;->a:Ljava/text/DateFormat;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Reservation;->m()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 235
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 236
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
