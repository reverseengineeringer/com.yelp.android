.class Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    .line 144
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->b(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v1

    move-object v2, v1

    .line 149
    :goto_1
    invoke-virtual {v2}, Lpl/droidsonroids/gif/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->d(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 156
    const/4 v1, 0x2

    if-le v5, v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v5, -0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->e(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lpl/droidsonroids/gif/c;->a(F)V

    .line 164
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1, v4}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;Z)Z

    .line 167
    :cond_3
    invoke-virtual {v2}, Lpl/droidsonroids/gif/c;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    .line 168
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 169
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->f(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v1

    iget-object v5, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v5

    invoke-virtual {v5}, Lpl/droidsonroids/gif/c;->d()I

    move-result v5

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->c()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lpl/droidsonroids/gif/c;->a(I)V

    .line 179
    :goto_2
    invoke-virtual {v2}, Lpl/droidsonroids/gif/c;->start()V

    .line 182
    :cond_4
    const/4 v1, 0x0

    .line 183
    iget-object v5, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_5

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    .line 187
    :cond_5
    invoke-virtual {v2}, Lpl/droidsonroids/gif/c;->f()I

    move-result v5

    .line 188
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d()Z

    move-result v1

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d()Z

    move-result v6

    if-eq v1, v6, :cond_a

    move v1, v3

    .line 193
    :goto_3
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->e()I

    move-result v3

    if-ge v5, v3, :cond_6

    if-eqz v1, :cond_c

    .line 195
    :cond_6
    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    invoke-virtual {v2}, Lpl/droidsonroids/gif/c;->stop()V

    .line 198
    if-eqz v1, :cond_7

    .line 199
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v0

    invoke-virtual {v2}, Lpl/droidsonroids/gif/c;->d()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/c;->a(I)V

    .line 208
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->i(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->h(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 144
    :cond_8
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->c(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 175
    :cond_9
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->f(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->g(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/GifImageView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lpl/droidsonroids/gif/GifImageView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->b(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/b;->c()I

    move-result v5

    invoke-virtual {v1, v5}, Lpl/droidsonroids/gif/c;->a(I)V

    goto/16 :goto_2

    :cond_a
    move v1, v4

    .line 188
    goto :goto_3

    .line 203
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->b(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Lpl/droidsonroids/gif/c;

    move-result-object v0

    invoke-virtual {v2}, Lpl/droidsonroids/gif/c;->d()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lpl/droidsonroids/gif/c;->a(I)V

    goto :goto_4

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->i(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView$1;->a:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->h(Lcom/yelp/android/ui/activities/animatedonboarding/GifView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
