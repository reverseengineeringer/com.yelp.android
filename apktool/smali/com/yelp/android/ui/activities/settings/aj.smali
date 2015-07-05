.class Lcom/yelp/android/ui/activities/settings/aj;
.super Ljava/lang/Object;
.source "PreferenceScreenFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

.field final synthetic b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/aj;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/aj;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

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
    .line 259
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 261
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/aj;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/aj;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/aj;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->a(Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;)Lcom/yelp/android/ui/activities/settings/an;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/aj;->b:Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;

    const v2, 0x7f07031a

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/settings/PreferenceScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/aj;->a:Lcom/yelp/android/ui/activities/settings/PreferenceView;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/settings/an;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 267
    return-void
.end method
