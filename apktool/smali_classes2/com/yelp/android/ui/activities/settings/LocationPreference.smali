.class public Lcom/yelp/android/ui/activities/settings/LocationPreference;
.super Lcom/yelp/android/ui/activities/settings/PreferenceView;
.source "LocationPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/ui/activities/settings/PreferenceView;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/cn",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/LocationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0100d9

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/settings/LocationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/settings/PreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Lcom/yelp/android/ui/activities/settings/LocationPreference$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/settings/LocationPreference$1;-><init>(Lcom/yelp/android/ui/activities/settings/LocationPreference;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 28
    sget-object v0, Lcom/yelp/android/b$a;->PreferenceView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/settings/LocationPreference;->setChecked(Z)V

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/settings/LocationPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->b:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->a:Lcom/yelp/android/appdata/webrequests/cn;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->a:Lcom/yelp/android/appdata/webrequests/cn;

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/webrequests/cn;->a(Z)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->a:Lcom/yelp/android/appdata/webrequests/cn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cn;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 58
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/yelp/android/appdata/webrequests/cn;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ep;->a:Landroid/location/Location;

    :cond_2
    iget-object v3, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v2, v0, v3}, Lcom/yelp/android/appdata/webrequests/cn;-><init>(Ljava/lang/String;Landroid/location/Location;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->a:Lcom/yelp/android/appdata/webrequests/cn;

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/LocationPreference;->a:Lcom/yelp/android/appdata/webrequests/cn;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cn;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
