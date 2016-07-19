.class public Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;
.super Landroid/widget/EditText;
.source "EditTextNonPopUpError.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public setError(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 60
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020336

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError$1;-><init>(Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/account/EditTextNonPopUpError;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method
