.class public Lorg/apache/commons/lang3/exception/b;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "getCause"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "getNextException"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "getTargetException"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "getException"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "getSourceException"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "getRootCause"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "getCausedByException"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "getNested"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "getLinkedException"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "getNestedException"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "getLinkedCause"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "getThrowable"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/lang3/exception/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 583
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 584
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 585
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 586
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
