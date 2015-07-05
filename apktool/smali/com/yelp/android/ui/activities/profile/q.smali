.class public final Lcom/yelp/android/ui/activities/profile/q;
.super Ljava/lang/Object;
.source "MoreAboutUser.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 319
    check-cast v0, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 321
    const/4 v0, 0x1

    .line 323
    :cond_0
    return v0
.end method
