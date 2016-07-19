.class Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;
.super Ljava/lang/Object;
.source "PreferenceScreenFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

.field final synthetic b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 289
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 291
    const-string/jumbo v0, ""

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getId()I

    move-result v0

    const v1, 0x7f0f0572

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    const v1, 0x7f0705b7

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;)Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$b;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 301
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->getId()I

    move-result v0

    const v1, 0x7f0f0571

    if-ne v0, v1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment$1;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    const v1, 0x7f0704b2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid parent type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
