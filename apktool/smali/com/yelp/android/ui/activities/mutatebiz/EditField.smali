.class public Lcom/yelp/android/ui/activities/mutatebiz/EditField;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "EditField.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/CharSequence;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditField;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "input_type"

    invoke-virtual {p4}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string/jumbo v1, "instructions"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    return-object v0
.end method

.method public static a(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 99
    const-string/jumbo v0, "empty_is_valid"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "content"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-static {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "empty_is_valid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    const v0, 0x7f0c0131

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "instructions"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->updateOptionsMenu()V

    .line 196
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 133
    const v0, 0x7f0c0132

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->values()[Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "input_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->setup(Landroid/widget/TextView;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/t;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/t;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditField;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "empty_is_valid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->updateOptionsMenu()V

    .line 202
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 166
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->setResult(ILandroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->finish()V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditField:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->setTitle(I)V

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b()V

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->a()V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    const v0, 0x7f0c04fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "submit text"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->d()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->c()V

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->updateOptionsMenu()V

    .line 208
    return-void
.end method
