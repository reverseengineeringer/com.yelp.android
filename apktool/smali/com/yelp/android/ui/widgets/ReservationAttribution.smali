.class public Lcom/yelp/android/ui/widgets/ReservationAttribution;
.super Landroid/widget/TextView;
.source "ReservationAttribution.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    sget-object v1, Lcom/yelp/android/b;->GapSizes:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    const/4 v1, 0x1

    sget v2, Lcom/yelp/android/appdata/ao;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setIncludeFontPadding(Z)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setCompoundDrawablePadding(I)V

    .line 35
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setVisibility(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public setProvider(Lcom/yelp/android/serializable/Reservation$Provider;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    sget-object v0, Lcom/yelp/android/ui/widgets/aa;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Reservation$Provider;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setVisibility(I)V

    .line 62
    return-void

    .line 41
    :pswitch_0
    const v0, 0x7f070494

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setText(I)V

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070493

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 47
    :pswitch_1
    const v0, 0x7f070496

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setText(I)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 52
    :pswitch_2
    const v0, 0x7f070495

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setText(I)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 57
    :pswitch_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ReservationAttribution;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Trying to set up a ReservationAttribution with no provider"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
