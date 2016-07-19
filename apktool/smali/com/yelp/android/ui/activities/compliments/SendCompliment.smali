.class public Lcom/yelp/android/ui/activities/compliments/SendCompliment;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "SendCompliment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;,
        Lcom/yelp/android/ui/activities/compliments/SendCompliment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/Compliment;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yelp/android/serializable/Complimentable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 229
    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/compliments/SendCompliment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string/jumbo v1, "extra.complimentable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    return-object v0
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;Lcom/yelp/android/serializable/Compliment$ComplimentType;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "extra.compliment_type"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/compliments/SendCompliment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/Compliment$ComplimentType;)V
    .locals 2

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    const v0, 0x7f0f01e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 187
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 191
    :cond_0
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 133
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->b:Lcom/yelp/android/serializable/Complimentable;

    .line 134
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a:Ljava/lang/String;

    .line 135
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->b:Lcom/yelp/android/serializable/Complimentable;

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 150
    const v0, 0x7f0f01e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    .line 153
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 157
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 159
    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v6, Lcom/yelp/android/ui/activities/compliments/SendCompliment$b;

    invoke-direct {v6, v5}, Lcom/yelp/android/ui/activities/compliments/SendCompliment$b;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_1

    .line 163
    :cond_1
    const v1, 0x7f0f001f

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 164
    new-instance v4, Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;

    const v2, 0x7f0f01e2

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lcom/yelp/android/ui/activities/compliments/SendCompliment$a;-><init>(Landroid/widget/EditText;Landroid/view/View;)V

    .line 170
    invoke-static {}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->values()[Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v5

    array-length v6, v5

    move v2, v3

    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v7, v5, v2

    .line 171
    invoke-virtual {v7}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    .line 172
    if-nez v1, :cond_2

    .line 170
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 175
    :cond_2
    iget v8, v7, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mIcon:I

    invoke-virtual {v1, v8, v3, v3, v3}, Landroid/widget/CompoundButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 176
    iget v7, v7, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mText:I

    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setText(I)V

    .line 177
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 179
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 180
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 287
    const v0, 0x7f0f001f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 288
    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;

    .line 289
    if-nez v1, :cond_0

    .line 290
    const v0, 0x7f0703cf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->showDialog(I)V

    .line 318
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    const v0, 0x7f0703d0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->showDialog(I)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v3

    .line 300
    new-instance v4, Lcom/yelp/android/serializable/Compliment;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->b:Lcom/yelp/android/serializable/Complimentable;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/yelp/android/serializable/Compliment;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Compliment$ComplimentType;Lcom/yelp/android/serializable/Complimentable;Lcom/yelp/android/serializable/User;)V

    .line 303
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->updateOptionsMenu()V

    .line 305
    new-instance v1, Lcom/yelp/android/appdata/webrequests/as$c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a:Ljava/lang/String;

    invoke-direct {v1, p0, v4, v2}, Lcom/yelp/android/appdata/webrequests/as$c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;Ljava/lang/String;)V

    .line 307
    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/as$c;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 308
    new-instance v2, Lcom/yelp/android/ui/activities/compliments/SendCompliment$1;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment$1;-><init>(Lcom/yelp/android/ui/activities/compliments/SendCompliment;Landroid/widget/EditText;)V

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Compliment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Compliment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->hideLoadingDialog()V

    .line 326
    const v0, 0x7f0701f3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    const-string/jumbo v1, "extra.compliment"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 329
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->setResult(ILandroid/content/Intent;)V

    .line 330
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->finish()V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Complimentable;)V
    .locals 1

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->b:Lcom/yelp/android/serializable/Complimentable;

    .line 139
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/yelp/android/serializable/Complimentable;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a:Ljava/lang/String;

    .line 140
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SendCompliment:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 95
    const-string/jumbo v0, "extra.user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Lcom/yelp/android/serializable/User;)V

    .line 96
    const-string/jumbo v0, "extra.complimentable"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Complimentable;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Lcom/yelp/android/serializable/Complimentable;)V

    .line 97
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const v0, 0x7f070196

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->finish()V

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->b()V

    .line 104
    const-string/jumbo v0, "extra.compliment_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->values()[Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v0

    const-string/jumbo v2, "extra.compliment_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Lcom/yelp/android/serializable/Compliment$ComplimentType;)V

    .line 108
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f070452

    const v3, 0x7f070297

    const v2, 0x1080027

    .line 266
    packed-switch p1, :pswitch_data_0

    .line 282
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 268
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0703cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0703d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x7f0703cf
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f07054e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->hideLoadingDialog()V

    .line 339
    const v0, 0x7f0f001f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 340
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 341
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->updateOptionsMenu()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0607

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a()V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 120
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0f001f

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 121
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p2, Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Compliment;)V

    return-void
.end method
