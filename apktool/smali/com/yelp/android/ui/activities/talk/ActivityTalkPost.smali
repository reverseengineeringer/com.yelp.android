.class public Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityTalkPost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/en$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:[Ljava/lang/String;

.field private f:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private g:Lcom/yelp/android/appdata/webrequests/en;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 159
    new-instance v0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a:Lcom/yelp/android/appdata/webrequests/k$b;

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string/jumbo v1, "categories_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->f:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object p1
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/Categories;->fromString(Ljava/lang/String;)Lcom/yelp/android/ui/activities/talk/Categories;

    move-result-object v0

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->showDialog(I)V

    .line 157
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->g:Lcom/yelp/android/appdata/webrequests/en;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->g:Lcom/yelp/android/appdata/webrequests/en;

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/webrequests/en;->a(Landroid/os/AsyncTask$Status;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->g:Lcom/yelp/android/appdata/webrequests/en;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/webrequests/en;->a(Z)V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 145
    const v4, 0x7f070705

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/Categories;->getId()I

    move-result v3

    .line 148
    new-instance v0, Lcom/yelp/android/appdata/webrequests/en;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/en;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->g:Lcom/yelp/android/appdata/webrequests/en;

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->g:Lcom/yelp/android/appdata/webrequests/en;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/en;->a([Ljava/lang/Object;)V

    .line 152
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 154
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->g:Lcom/yelp/android/appdata/webrequests/en;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TalkPost:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a()V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "categories_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->e:[Ljava/lang/String;

    .line 55
    const v0, 0x7f0f01b6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->b:Landroid/widget/EditText;

    .line 56
    const v0, 0x7f0f01b7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->c:Landroid/widget/EditText;

    .line 58
    const v0, 0x7f0f01b8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->d:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$1;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0f01b9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f070452

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 102
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0705b4

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->f:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {v1, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0301fd

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->e:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 83
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0701a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$2;-><init>(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070336

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0705b6

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0704a7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0607

    if-ne v0, v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a()V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
