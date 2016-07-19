.class public Lcom/yelp/android/ui/widgets/ReservationAttribution;
.super Landroid/widget/TextView;
.source "ReservationAttribution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/widgets/ReservationAttribution$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setIncludeFontPadding(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setCompoundDrawablePadding(I)V

    .line 31
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setVisibility(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public setProvider(Lcom/yelp/android/serializable/Reservation$Provider;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v0, Lcom/yelp/android/ui/widgets/ReservationAttribution$1;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation$Provider;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setVisibility(I)V

    .line 58
    return-void

    .line 37
    :pswitch_0
    const v0, 0x7f0704ab

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setText(I)V

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0704aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 43
    :pswitch_1
    const v0, 0x7f0704ad

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setText(I)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 48
    :pswitch_2
    const v0, 0x7f0704ac

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setText(I)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 53
    :pswitch_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Trying to set up a ReservationAttribution with no provider"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
