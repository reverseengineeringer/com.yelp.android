.class public Lcom/yelp/android/ui/activities/mutatebiz/Field;
.super Landroid/widget/TextView;
.source "Field.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mutatebiz/ah;


# instance fields
.field protected a:Landroid/os/Bundle;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/yelp/android/ui/activities/mutatebiz/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 91
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    .line 84
    sget-object v0, Lcom/yelp/android/b;->AddBusinessField:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setAttributes(Landroid/content/res/TypedArray;)V

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.attachment"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b:I

    .line 249
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->d:I

    .line 252
    :cond_1
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->e:Lcom/yelp/android/ui/activities/mutatebiz/y;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->e:Lcom/yelp/android/ui/activities/mutatebiz/y;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b()Z

    move-result v1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/y;->a(ZZ)V

    .line 256
    :cond_2
    return-void

    .line 248
    :cond_3
    iget v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->c:I

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public varargs a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public getAttachment()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getCharSequenceData()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getParcelableArrayData()[Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getParcelableArrayListData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getSerializable()Ljava/io/Serializable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 267
    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "key.data.parent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 269
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 260
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "key.data.parent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    return-void
.end method

.method setAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b:I

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->c:I

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->d:I

    .line 102
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->setHint(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a(Ljava/lang/CharSequence;Landroid/os/Parcelable;)V

    .line 104
    return-void
.end method

.method public setListener(Lcom/yelp/android/ui/activities/mutatebiz/y;)V
    .locals 3

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->e:Lcom/yelp/android/ui/activities/mutatebiz/y;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->e:Lcom/yelp/android/ui/activities/mutatebiz/y;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/Field;->e:Lcom/yelp/android/ui/activities/mutatebiz/y;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->b()Z

    move-result v1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/Field;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/y;->a(ZZ)V

    .line 111
    :cond_0
    return-void
.end method
