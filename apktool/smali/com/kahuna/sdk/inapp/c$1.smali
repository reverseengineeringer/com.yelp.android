.class Lcom/kahuna/sdk/inapp/c$1;
.super Ljava/lang/Object;
.source "RichInAppMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/inapp/c;->a(Landroid/app/Activity;Lcom/kahuna/sdk/inapp/RichInAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/kahuna/sdk/inapp/RichInAppMessage;

.field final synthetic c:Lcom/kahuna/sdk/inapp/c;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;Lcom/kahuna/sdk/inapp/RichInAppMessage;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    iput-object p2, p0, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kahuna/sdk/inapp/c$1;->b:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x103000d

    const/16 v8, 0xff

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 122
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 125
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1;->b:Lcom/kahuna/sdk/inapp/RichInAppMessage;

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/d;

    .line 129
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->c()I

    move-result v1

    .line 134
    invoke-static {v0, v3, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/d;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->d()I

    move-result v1

    .line 136
    invoke-static {v0, v3, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/d;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 137
    const-string/jumbo v1, "system"

    move-object v3, v1

    move v1, v2

    .line 142
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 143
    const-string/jumbo v6, "fullscreen"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 144
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 146
    if-ne v1, v2, :cond_3

    .line 147
    sget v1, Lcom/kahuna/sdk/z$b;->fullscreen_1:I

    invoke-virtual {v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 148
    iget-object v3, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v4, Lcom/kahuna/sdk/z$a;->image:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "image1"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v3, v2, v4, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/b;)V

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v1, v2, v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;Lcom/kahuna/sdk/inapp/d;)V

    .line 160
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v3, Lcom/kahuna/sdk/z$a;->title:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->e()Lcom/kahuna/sdk/inapp/e;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/e;)V

    .line 161
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v3, Lcom/kahuna/sdk/z$a;->message:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->f()Lcom/kahuna/sdk/inapp/e;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/e;)V

    .line 162
    iget-object v3, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v4, Lcom/kahuna/sdk/z$a;->leftButton:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "button1"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v3, v2, v4, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/a;)V

    .line 163
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v3, Lcom/kahuna/sdk/z$a;->rightButton:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v4, "button2"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v1, v2, v3, v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/a;)V

    .line 164
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 165
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 274
    :goto_1
    if-eqz v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    iget-object v2, p0, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    invoke-static {v1, v2, v7}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;Z)V

    .line 276
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v1, v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 277
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v1}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 278
    new-instance v1, Lcom/kahuna/sdk/inapp/c$1$5;

    invoke-direct {v1, p0}, Lcom/kahuna/sdk/inapp/c$1$5;-><init>(Lcom/kahuna/sdk/inapp/c$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 284
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->b(Lcom/kahuna/sdk/inapp/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 285
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->e()Lcom/kahuna/sdk/inapp/c;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/app/Activity;)Landroid/app/Activity;

    .line 286
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/d;

    .line 288
    new-instance v1, Lcom/kahuna/sdk/d;

    const-string/jumbo v2, "k_iam_displayed"

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/d;-><init>(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v2, "trackingId"

    iget-object v3, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v3}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;)Lcom/kahuna/sdk/inapp/RichInAppMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kahuna/sdk/inapp/RichInAppMessage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kahuna/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;

    .line 290
    const-string/jumbo v2, "templateId"

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kahuna/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kahuna/sdk/d;

    .line 291
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kahuna/sdk/d;->a()Lcom/kahuna/sdk/Event;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/Event;)V

    .line 294
    :cond_2
    return-void

    .line 150
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 151
    sget v1, Lcom/kahuna/sdk/z$b;->fullscreen_2:I

    invoke-virtual {v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v4, Lcom/kahuna/sdk/z$a;->image:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "image1"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v3, v2, v4, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/b;)V

    .line 153
    iget-object v3, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v4, Lcom/kahuna/sdk/z$a;->image2:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "image2"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v3, v2, v4, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/b;)V

    goto/16 :goto_0

    .line 168
    :cond_4
    const-string/jumbo v6, "modal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 169
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->c()Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 170
    if-ne v1, v2, :cond_2

    .line 171
    sget v1, Lcom/kahuna/sdk/z$b;->modal_1:I

    invoke-virtual {v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 172
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v1, v2, v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;Lcom/kahuna/sdk/inapp/d;)V

    .line 173
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v3, Lcom/kahuna/sdk/z$a;->title:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->e()Lcom/kahuna/sdk/inapp/e;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/e;)V

    .line 174
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v3, Lcom/kahuna/sdk/z$a;->message:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->f()Lcom/kahuna/sdk/inapp/e;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/e;)V

    .line 175
    iget-object v3, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v4, Lcom/kahuna/sdk/z$a;->image:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "image1"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v3, v2, v4, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/b;)V

    .line 176
    iget-object v3, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v4, Lcom/kahuna/sdk/z$a;->leftButton:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v5, "button1"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v3, v2, v4, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/a;)V

    .line 177
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v3, Lcom/kahuna/sdk/z$a;->rightButton:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v4, "button2"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    invoke-static {v1, v2, v3, v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/a;)V

    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    .line 188
    :cond_5
    const-string/jumbo v6, "slider"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 189
    invoke-static {}, Lcom/kahuna/sdk/inapp/c;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 190
    if-ne v1, v2, :cond_2

    .line 192
    sget v1, Lcom/kahuna/sdk/z$b;->slider_1:I

    invoke-virtual {v5, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 193
    sget v1, Lcom/kahuna/sdk/z$a;->sliderLayout:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 194
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    invoke-static {v1, v3, v0}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;Lcom/kahuna/sdk/inapp/d;)V

    .line 195
    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v4, Lcom/kahuna/sdk/z$a;->message:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->f()Lcom/kahuna/sdk/inapp/e;

    move-result-object v5

    invoke-static {v1, v2, v4, v5}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/e;)V

    .line 196
    iget-object v4, p0, Lcom/kahuna/sdk/inapp/c$1;->c:Lcom/kahuna/sdk/inapp/c;

    sget v5, Lcom/kahuna/sdk/z$a;->image:I

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->i()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v6, "image1"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/b;

    invoke-static {v4, v2, v5, v1}, Lcom/kahuna/sdk/inapp/c;->a(Lcom/kahuna/sdk/inapp/c;Landroid/view/View;ILcom/kahuna/sdk/inapp/b;)V

    .line 199
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v4, "button1"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v4, "button1"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/a;

    invoke-virtual {v1}, Lcom/kahuna/sdk/inapp/a;->f()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 201
    new-instance v1, Lcom/kahuna/sdk/inapp/c$1$1;

    invoke-direct {v1, p0}, Lcom/kahuna/sdk/inapp/c$1$1;-><init>(Lcom/kahuna/sdk/inapp/c$1;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "close_button"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    .line 211
    sget v1, Lcom/kahuna/sdk/z$a;->closeTextView:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 212
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/a;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 215
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 216
    new-instance v0, Lcom/kahuna/sdk/inapp/c$1$2;

    invoke-direct {v0, p0}, Lcom/kahuna/sdk/inapp/c$1$2;-><init>(Lcom/kahuna/sdk/inapp/c$1;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 225
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 226
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 235
    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kahuna/sdk/inapp/c$1;->a:Landroid/app/Activity;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->e()Lcom/kahuna/sdk/inapp/e;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->e()Lcom/kahuna/sdk/inapp/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kahuna/sdk/inapp/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 237
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->e()Lcom/kahuna/sdk/inapp/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kahuna/sdk/inapp/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 239
    :cond_7
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->f()Lcom/kahuna/sdk/inapp/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kahuna/sdk/inapp/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "button1"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/inapp/a;

    invoke-virtual {v1}, Lcom/kahuna/sdk/inapp/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/kahuna/sdk/inapp/c$1$3;

    invoke-direct {v3, p0}, Lcom/kahuna/sdk/inapp/c$1$3;-><init>(Lcom/kahuna/sdk/inapp/c$1;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "button2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/inapp/a;

    invoke-virtual {v0}, Lcom/kahuna/sdk/inapp/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/kahuna/sdk/inapp/c$1$4;

    invoke-direct {v1, p0}, Lcom/kahuna/sdk/inapp/c$1$4;-><init>(Lcom/kahuna/sdk/inapp/c$1;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    move-object v0, v4

    goto/16 :goto_1
.end method
