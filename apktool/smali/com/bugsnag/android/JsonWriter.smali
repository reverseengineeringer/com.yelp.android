.class Lcom/bugsnag/android/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/JsonWriter$1;,
        Lcom/bugsnag/android/JsonWriter$JsonScope;
    }
.end annotation


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bugsnag/android/JsonWriter$JsonScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 192
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    move v0, v1

    .line 193
    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    .line 194
    sget-object v2, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string/jumbo v2, "\\\""

    aput-object v2, v0, v1

    .line 197
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string/jumbo v2, "\\\\"

    aput-object v2, v0, v1

    .line 198
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string/jumbo v2, "\\t"

    aput-object v2, v0, v1

    .line 199
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string/jumbo v2, "\\b"

    aput-object v2, v0, v1

    .line 200
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string/jumbo v2, "\\n"

    aput-object v2, v0, v1

    .line 201
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string/jumbo v2, "\\r"

    aput-object v2, v0, v1

    .line 202
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string/jumbo v2, "\\f"

    aput-object v2, v0, v1

    .line 203
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 204
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string/jumbo v2, "\\u003c"

    aput-object v2, v0, v1

    .line 205
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string/jumbo v2, "\\u003e"

    aput-object v2, v0, v1

    .line 206
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string/jumbo v2, "\\u0026"

    aput-object v2, v0, v1

    .line 207
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string/jumbo v2, "\\u003d"

    aput-object v2, v0, v1

    .line 208
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string/jumbo v2, "\\u0027"

    aput-object v2, v0, v1

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    .line 216
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string/jumbo v0, ":"

    iput-object v0, p0, Lcom/bugsnag/android/JsonWriter;->separator:Ljava/lang/String;

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bugsnag/android/JsonWriter;->serializeNulls:Z

    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    .line 248
    return-void
.end method

.method private beforeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->peek()Lcom/bugsnag/android/JsonWriter$JsonScope;

    move-result-object v0

    .line 619
    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    if-ne v0, v1, :cond_1

    .line 620
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->newline()V

    .line 625
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->DANGLING_NAME:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V

    .line 626
    return-void

    .line 621
    :cond_1
    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    if-eq v0, v1, :cond_0

    .line 622
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeValue(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    sget-object v0, Lcom/bugsnag/android/JsonWriter$1;->$SwitchMap$com$bugsnag$android$JsonWriter$JsonScope:[I

    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->peek()Lcom/bugsnag/android/JsonWriter$JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/JsonWriter$JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 669
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :pswitch_0
    iget-boolean v0, p0, Lcom/bugsnag/android/JsonWriter;->lenient:Z

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    :pswitch_1
    iget-boolean v0, p0, Lcom/bugsnag/android/JsonWriter;->lenient:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 647
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_1
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V

    .line 671
    :goto_0
    return-void

    .line 654
    :pswitch_2
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V

    .line 655
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->newline()V

    goto :goto_0

    .line 659
    :pswitch_3
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 660
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->newline()V

    goto :goto_0

    .line 664
    :pswitch_4
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 665
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private close(Lcom/bugsnag/android/JsonWriter$JsonScope;Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->peek()Lcom/bugsnag/android/JsonWriter$JsonScope;

    move-result-object v0

    .line 384
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dangling name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 392
    if-ne v0, p2, :cond_2

    .line 393
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->newline()V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 396
    return-object p0
.end method

.method private newline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 611
    :cond_0
    return-void

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 608
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private open(Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 372
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    return-object p0
.end method

.method private peek()Lcom/bugsnag/android/JsonWriter$JsonScope;
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 404
    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    return-object v0
.end method

.method private replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 571
    iget-boolean v0, p0, Lcom/bugsnag/android/JsonWriter;->htmlSafe:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 572
    :goto_0
    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    .line 575
    :goto_1
    if-ge v3, v4, :cond_6

    .line 576
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 578
    const/16 v5, 0x80

    if-ge v2, v5, :cond_2

    .line 579
    aget-object v2, v0, v2

    .line 580
    if-nez v2, :cond_3

    .line 575
    :cond_0
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 571
    :cond_1
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_0

    .line 583
    :cond_2
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_5

    .line 584
    const-string/jumbo v2, "\\u2028"

    .line 590
    :cond_3
    :goto_3
    if-ge v1, v3, :cond_4

    .line 591
    iget-object v5, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 593
    :cond_4
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    .line 585
    :cond_5
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_0

    .line 586
    const-string/jumbo v2, "\\u2029"

    goto :goto_3

    .line 596
    :cond_6
    if-ge v1, v4, :cond_7

    .line 597
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 599
    :cond_7
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private writeDeferredName()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->beforeName()V

    .line 440
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->string(Ljava/lang/String;)V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    .line 443
    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 334
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "["

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/JsonWriter;->open(Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 354
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/JsonWriter;->open(Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 561
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 563
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 564
    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    if-eq v0, v1, :cond_1

    .line 565
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 568
    return-void
.end method

.method public endArray()Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/bugsnag/android/JsonWriter;->close(Lcom/bugsnag/android/JsonWriter$JsonScope;Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string/jumbo v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/bugsnag/android/JsonWriter;->close(Lcom/bugsnag/android/JsonWriter$JsonScope;Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 553
    return-void
.end method

.method public name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    if-nez p1, :cond_0

    .line 425
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_2
    iput-object p1, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    .line 434
    return-object p0
.end method

.method public nullValue()Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 468
    iget-boolean v0, p0, Lcom/bugsnag/android/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 475
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 476
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 477
    :goto_0
    return-object p0

    .line 471
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_0
.end method

.method public value(J)Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 517
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 518
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonWriter;->nullValue()Lcom/bugsnag/android/JsonWriter;

    move-result-object p0

    .line 541
    :goto_0
    return-object p0

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 534
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-boolean v1, p0, Lcom/bugsnag/android/JsonWriter;->lenient:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 540
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    if-nez p1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonWriter;->nullValue()Lcom/bugsnag/android/JsonWriter;

    move-result-object p0

    .line 458
    :goto_0
    return-object p0

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 457
    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;->string(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public value(Z)Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 488
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 489
    return-object p0

    .line 488
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method
